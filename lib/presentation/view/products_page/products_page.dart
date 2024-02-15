import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filters_widget/filters_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_item_widget/product_item_widget.dart';
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
  final ScrollController _scrollController = ScrollController();
  bool _isStuck = false;

  void _afterLayout(_) {
    _scrollController.addListener(
      () {
        final RenderBox renderBox =
            _key.currentContext?.findRenderObject() as RenderBox;

        final Offset offset = renderBox.localToGlobal(Offset.zero);
        final double startY = offset.dy;

        setState(() {
          _isStuck = startY <= 70;
        });
      },
    );
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
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getIt<SizeConfig>().padding, vertical: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Performance Sneakers",
                          style: typography.h4Title,
                        ),
                        BlocBuilder<ProductsBloc, ProductsState>(
                          builder: (context, state) {
                            return Text(
                              "${state.products.length} items",
                              style: typography.bodyText1.copyWith(
                                color: colorPalette.gray1,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<ProductsBloc, ProductsState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const SizedBox();
                      }
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getIt<SizeConfig>().padding),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: !_isStuck,
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              child: _filtersBuilder(key: _key),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            Expanded(
                              child: GridView.builder(
                                itemCount: state.products.length,
                                shrinkWrap: true,
                                padding: const EdgeInsets.only(bottom: 32),
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 16,
                                  crossAxisSpacing: 16,
                                  childAspectRatio: .8,
                                ),
                                itemBuilder: ((context, index) {
                                  return ProductItemWidget(
                                    item: state.products[index],
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            if (_isStuck)
              Positioned(
                top: 70,
                left: getIt<SizeConfig>().padding,
                child: _filtersBuilder(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _filtersBuilder({GlobalKey<State<StatefulWidget>>? key}) =>
      RepaintBoundary(
          child: FiltersWidget(
        key: key,
      ));
}
