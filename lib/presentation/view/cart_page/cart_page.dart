import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/cart_body_widget/cart_body_widget.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/order_summery_widget/order_summery_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/alternative_products_widget/alternative_products_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  static const String path = "/cart";

  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final GlobalKey _orderSummeryKey = GlobalKey();
  final GlobalKey _listViewkey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  bool _isStuckTop = false;
  bool _isStuckBottom = false;
  final double filtersWidgetPaddingVerticaly = 50;
  double filtersWidgetTopOffset = 0;

  void _afterLayout(_) {
    _scrollController.addListener(
      () {
        _calculateFilterWidgetPosition();
      },
    );
  }

  void _calculateFilterWidgetPosition() {
    final RenderBox renderBox =
        _orderSummeryKey.currentContext?.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final double startY = offset.dy;
    final double totalGridViewHeight =
        _listViewkey.currentContext!.size!.height - 590;

    setState(() {
      _isStuckTop = startY <= filtersWidgetPaddingVerticaly;
      _isStuckBottom = _scrollController.offset >= totalGridViewHeight;
      filtersWidgetTopOffset =
          (totalGridViewHeight - _scrollController.offset) + 45;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CartBloc>()..add(const CartEvent.getProducts()),
      child: Scaffold(
        backgroundColor: colorPalette.primary,
        drawer: const DrawerWidget(
          selectedIndex: 5,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  HeaderWidget(
                      selectedIndex: 5, backgroundColor: colorPalette.primary),
                  Divider(
                    color: colorPalette.gray5,
                    thickness: 1.6,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  CartBodyWidget(
                    orderSummeryKey: _orderSummeryKey,
                    listViewKey: _listViewkey,
                    isStuckTop: _isStuckTop,
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  AlternativeProductsWidget(item: productListData.first),
                  const SizedBox(
                    height: 120,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getIt<SizeConfig>().padding),
                    child: Divider(
                      color: colorPalette.gray5,
                      thickness: 1.6,
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  const FooterWidget()
                ],
              ),
            ),
            if (_isStuckTop)
              Positioned(
                top: _isStuckBottom
                    ? filtersWidgetTopOffset
                    : filtersWidgetPaddingVerticaly,
                right: context.isLtrLocale ? getIt<SizeConfig>().padding : null,
                left: !context.isLtrLocale ? getIt<SizeConfig>().padding : null,
                child: BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return orderSummeryBuilder(
                        cartBloc: context.read<CartBloc>());
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget orderSummeryBuilder(
        {GlobalKey<State<StatefulWidget>>? key, required CartBloc cartBloc}) =>
    RepaintBoundary(
        child: OrderSummeryWidget(
      cartBloc: cartBloc,
      key: key,
    ));
