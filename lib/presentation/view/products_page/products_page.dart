import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/subscribe_widget/subscribe_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filters_widget/filters_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_item_widget/product_item_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/products_page_title_widget/products_page_title_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        drawer: const DrawerWidget(
          selectedIndex: 2,
        ),
        body: ConstraintsWidget(
          child: Stack(
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
                    const ProductsPageTitleWidget(),
                    context.isPhone
                        ? _productsListPhoneWidget()
                        : _productsListTabletAndWebWidget(),
                    const SubscribeWidget(
                      fullWidth: true,
                    ),
                    const FooterWidget(),
                  ],
                ),
              ),
              if (_isStuckTop && !context.isPhone)
                Positioned(
                  top: _isStuckBottom
                      ? filtersWidgetTopOffset
                      : filtersWidgetPaddingVerticaly,
                  left:
                      context.isLtrLocale ? getIt<SizeConfig>().padding : null,
                  right:
                      !context.isLtrLocale ? getIt<SizeConfig>().padding : null,
                  child: _filtersBuilder(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<ProductsBloc, ProductsState> _productsListTabletAndWebWidget() {
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _gridViewCrossAxisCount(context),
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

  BlocBuilder<ProductsBloc, ProductsState> _productsListPhoneWidget() {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatorWidget(
                delay: const Duration(milliseconds: 1000),
                withFadeTransition: true,
                withVisibilityDetector: false,
                child: _filtersBuilder(key: _key),
              ),
              const SizedBox(
                height: 32,
              ),
              state.isLoading
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
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: .6,
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
            ],
          ),
        );
      },
    );
  }

  int _gridViewCrossAxisCount(BuildContext context) {
    return 1.w(context) < 950
        ? 1
        : 1.w(context) < 1400
            ? 2
            : 3;
  }

  Widget _filtersBuilder({GlobalKey<State<StatefulWidget>>? key}) =>
      RepaintBoundary(
          child: FiltersWidget(
        key: key,
      ));
}
