import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/subscribe_widget/subscribe_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filters_widget/filters_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_item_widget/product_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_text_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ProductsPage extends StatefulWidget {
  static const String path = "/products";

  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final GlobalKey _key = GlobalKey();
  final GlobalKey _gridViewkey = GlobalKey();
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
        _key.currentContext?.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final double startY = offset.dy;
    final double totalGridViewHeight =
        _gridViewkey.currentContext!.size!.height - 565;

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
          getIt<ProductsBloc>()..add(const ProductsEvent.getProduts()),
      child: Scaffold(
        backgroundColor: colorPalette.primary,
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  HeaderWidget(
                    selectedIndex: 2,
                    backgroundColor: colorPalette.primary,
                  ),
                  Divider(
                    color: colorPalette.gray5,
                  ),
                  _titleWidget(),
                  _productsListWidget(),
                  const SubscribeWidget(
                    fullWidth: true,
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  const FooterWidget(),
                ],
              ),
            ),
            if (_isStuckTop)
              Positioned(
                top: _isStuckBottom
                    ? filtersWidgetTopOffset
                    : filtersWidgetPaddingVerticaly,
                left: context.isLtrLocale ? getIt<SizeConfig>().padding : null,
                right:
                    !context.isLtrLocale ? getIt<SizeConfig>().padding : null,
                child: _filtersBuilder(),
              ),
          ],
        ),
      ),
    );
  }

  BlocBuilder<ProductsBloc, ProductsState> _productsListWidget() {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatorWidget(
                delay: const Duration(milliseconds: 1000),
                withFadeTransition: true,
                withVisibilityDetector: false,
                child: Visibility(
                  visible: !_isStuckTop,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: _filtersBuilder(key: _key),
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              Expanded(
                child: state.isLoading
                    ? Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.25.h(context)),
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor: colorPalette.accent4,
                          ),
                        ),
                      )
                    : GridView.builder(
                        key: _gridViewkey,
                        itemCount: state.products.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(bottom: 50),
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: .78,
                        ),
                        itemBuilder: ((context, index) {
                          return AnimatorWidget(
                            withFadeTransition: true,
                            withVisibilityDetector: false,
                            slideTransition: Tween<Offset>(
                                begin: const Offset(0, .1), end: Offset.zero),
                            delay: Duration(
                              milliseconds: 100 + (index * 100),
                            ),
                            child: ProductItemWidget(
                              item: state.products[index],
                            ),
                          );
                        }),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  Padding _titleWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getIt<SizeConfig>().padding, vertical: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatorTextWidget(
            context.locale.performanceSneakers,
            style: typography.h4Title,
            initialDelay: const Duration(milliseconds: 200),
            spaceDelay: Duration.zero,
            incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                blur: const Offset(0, 20),
                duration: const Duration(milliseconds: 170)),
            textAlign: TextAlign.start,
          ),
          BlocBuilder<ProductsBloc, ProductsState>(
            builder: (context, state) {
              return AnimatorTextWidget(
                "${state.products.length} ${context.locale.items}",
                initialDelay: const Duration(milliseconds: 700),
                style: typography.bodyText1.copyWith(
                  color: colorPalette.gray1,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _filtersBuilder({GlobalKey<State<StatefulWidget>>? key}) =>
      RepaintBoundary(
          child: FiltersWidget(
        key: key,
      ));
}
