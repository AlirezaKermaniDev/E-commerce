import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filter_items_widget/filter_items_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_item_widget/product_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:highlight_text/highlight_text.dart';

class ProductDetailPage extends StatefulWidget {
  static const String path = "/product-detail";
  final String productId;

  const ProductDetailPage({super.key, required this.productId});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late ProductEntity product =
      productListData.firstWhere((e) => e.id == widget.productId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
                selectedIndex: 2, backgroundColor: colorPalette.primary),
            Divider(
              color: colorPalette.gray5,
              height: 1,
            ),
            const SizedBox(
              height: 74,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getIt<SizeConfig>().padding),
                  child: BreadcrumbWidget(
                    items: product.categories ?? [],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            ProdcutInfoWidget(product: product),
            const SizedBox(
              height: 120,
            ),
            AlternativeProductsWidget(
              item: product,
            ),
            SizedBox(
              height: getIt<SizeConfig>().padding,
            ),
            const JoinOurClubBannerWidget(),
            SizedBox(
              height: getIt<SizeConfig>().padding,
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}

class JoinOurClubBannerWidget extends StatelessWidget {
  const JoinOurClubBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 1.w(context),
      decoration: BoxDecoration(gradient: colorPalette.gradient1),
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: TextHighlight(
                        text: "Join our customers club & get 25% sale discount",
                        textStyle: typography.h2Title
                            .copyWith(color: colorPalette.primary, height: 1),
                        words: {
                          "25% sale": HighlightedWord(
                              textStyle: typography.h2Title,
                              padding: const EdgeInsets.only(bottom: 30))
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        title: "Sign up for free",
                        color: colorPalette.accent1,
                        shadowColor: Colors.black26,
                        height: 60,
                        width: 290,
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
          Positioned(
            left: -30,
            top: -30,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            left: 60,
            top: 60,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 60,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}

class AlternativeProductsWidget extends StatelessWidget {
  AlternativeProductsWidget({super.key, required this.item});
  final ProductEntity item;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List<ProductEntity> products = productListData
        .where((e) =>
            e.id != item.id && e.categories?.last == item.categories?.last)
        .toList();
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: Row(
            children: [
              Text(
                "You may also like",
                style: typography.h4Title,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 72,
        ),
        SizedBox(
          height: 580,
          width: 1.w(context),
          child: ScrollBarWidget(
            scrollController: scrollController,
            child: ListView.builder(
                itemCount: products.length,
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
                  right: !context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
                  bottom: 80,
                ),
                itemBuilder: (context, index) {
                  final item = products[index];
                  return AlternativeProductItemWidget(item: item);
                }),
          ),
        )
      ],
    );
  }
}

class AlternativeProductItemWidget extends StatelessWidget {
  const AlternativeProductItemWidget({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: InkWell(
        onTap: () {
          context.go("${ProductDetailPage.path}/${item.id}");
        },
        child: SizedBox(
          width: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ProductImageViewrWidget(
                    imageUrl: item.imageUrl ?? "",
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                item.categories?.last ?? "",
                style: typography.bodyText1.copyWith(color: colorPalette.gray2),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                item.title ?? "",
                style: typography.bodyText3,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "\$${item.price}",
                style: typography.h5Title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProdcutInfoWidget extends StatelessWidget {
  const ProdcutInfoWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImageWidget(product: product),
          const SizedBox(
            width: 100,
          ),
          ProductDetailwidget(product: product)
        ],
      ),
    );
  }
}

class ProductDetailwidget extends StatelessWidget {
  const ProductDetailwidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.categories?.last ?? "",
                style: typography.bodyText1.copyWith(
                  color: colorPalette.gray2,
                ),
              ),
              RateBarWidget(
                activeColor: colorPalette.darkPrimary,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.title ?? "",
            style: typography.h2Title,
          ),
          const SizedBox(
            height: 4,
          ),
          AvailableColorsWidget(product: product),
          const SizedBox(
            height: 25,
          ),
          Text(
            "\$${product.price}",
            style: typography.h4Title,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            product.description ?? "",
            style: typography.bodyText2.copyWith(color: colorPalette.gray2),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Select size",
            style: typography.bodyText1.copyWith(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          AvailableSizesWidget(product: product),
          const SizedBox(
            height: 50,
          ),
          const AddToCardButtons(),
          const SizedBox(
            height: 50,
          ),
          Divider(
            height: 1.5,
            color: colorPalette.gray4,
          ),
          FilterItemsWidget(
            title: "Material",
            initialExpanded: false,
            textStyle: typography.bodyText1.copyWith(
              fontSize: 20,
            ),
            iconSize: 30,
            color: colorPalette.darkPrimary,
            headerHeight: 100,
            child: Padding(
                padding: const EdgeInsets.only(bottom: 35, top: 16),
                child: Row(
                  children: product.materials!
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(
                              e,
                              style: typography.bodyText1
                                  .copyWith(color: colorPalette.gray2),
                            ),
                          ))
                      .toList(),
                )),
          ),
          Divider(
            height: 1.5,
            color: colorPalette.gray4,
          ),
          FilterItemsWidget(
            title: "Delivery & Returns",
            initialExpanded: false,
            textStyle: typography.bodyText1.copyWith(
              fontSize: 20,
            ),
            iconSize: 30,
            color: colorPalette.darkPrimary,
            headerHeight: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 35),
              child: Text(
                product.deliveryAndReturns ?? "",
                style: typography.bodyText1.copyWith(color: colorPalette.gray2),
              ),
            ),
          ),
          Divider(
            height: 1.5,
            color: colorPalette.gray4,
          ),
          FilterItemsWidget(
            title: "Description",
            initialExpanded: false,
            textStyle: typography.bodyText1.copyWith(
              fontSize: 20,
            ),
            iconSize: 30,
            color: colorPalette.darkPrimary,
            headerHeight: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 35),
              child: Text(
                product.description ?? "",
                style: typography.bodyText1.copyWith(color: colorPalette.gray2),
              ),
            ),
          ),
          Divider(
            height: 1.5,
            color: colorPalette.gray4,
          ),
          const SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }
}

class AvailableColorsWidget extends StatelessWidget {
  const AvailableColorsWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Available in",
          style: typography.bodyText4.copyWith(color: colorPalette.gray2),
        ),
        const SizedBox(
          width: 8,
        ),
        ...product.colors!
            .map((e) => Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Container(
                    height: 21,
                    width: 21,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Color(e)),
                  ),
                ))
            .toList()
      ],
    );
  }
}

class AddToCardButtons extends StatelessWidget {
  const AddToCardButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(color: colorPalette.gray6),
              child: Center(
                child: Icon(
                  Icons.remove_rounded,
                  color: colorPalette.darkPrimary,
                  size: 27,
                ),
              ),
            ),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  border: Border.all(color: colorPalette.gray6, width: 1.5)),
              child: Center(
                child: Text(
                  "1",
                  style: typography.bodyText1,
                ),
              ),
            ),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(color: colorPalette.gray6),
              child: Center(
                child: Icon(
                  Icons.add_rounded,
                  color: colorPalette.darkPrimary,
                  size: 27,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          child: Container(
            height: 75,
            decoration: BoxDecoration(color: colorPalette.darkPrimary),
            child: Center(
              child: Text(
                "Add to cart",
                style:
                    typography.bodyText3.copyWith(color: colorPalette.primary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AvailableSizesWidget extends StatelessWidget {
  const AvailableSizesWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.7,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        SizesItemWidget(
          value: "6",
          isAvailable: product.availableSizes!.contains(6),
        ),
        SizesItemWidget(
          value: "7",
          isAvailable: product.availableSizes!.contains(7),
        ),
        SizesItemWidget(
          value: "7.5",
          isAvailable: product.availableSizes!.contains(7.5),
        ),
        SizesItemWidget(
          value: "8",
          isAvailable: product.availableSizes!.contains(8),
        ),
        SizesItemWidget(
          value: "9",
          isAvailable: product.availableSizes!.contains(9),
        ),
        SizesItemWidget(
          value: "9.5",
          isAvailable: product.availableSizes!.contains(9.5),
        ),
        SizesItemWidget(
          value: "10",
          isAvailable: product.availableSizes!.contains(10),
        ),
        SizesItemWidget(
          value: "10.5",
          isAvailable: product.availableSizes!.contains(10.5),
        ),
      ],
    );
  }
}

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.network(product.imageUrl ?? ""),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 32,
                  crossAxisSpacing: 32,
                  childAspectRatio: .8),
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 32),
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Image.network(
                  product.imageUrl ?? "",
                  fit: BoxFit.cover,
                );
              })
        ],
      ),
    );
  }
}

class SizesItemWidget extends StatefulWidget {
  const SizesItemWidget({
    super.key,
    required this.value,
    required this.isAvailable,
  });

  final String value;
  final bool isAvailable;

  @override
  State<SizesItemWidget> createState() => _SizesItemWidgetState();
}

class _SizesItemWidgetState extends State<SizesItemWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isAvailable ? () {} : null,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: Border.all(
            color: _isHover && widget.isAvailable
                ? colorPalette.darkPrimary
                : colorPalette.gray5,
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            widget.value,
            style: typography.bodyText1.copyWith(
              color: widget.isAvailable ? null : colorPalette.gray5,
            ),
          ),
        ),
      ),
    );
  }
}

class BreadcrumbWidget extends StatelessWidget {
  const BreadcrumbWidget({super.key, required this.items});
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Row(
              children: [
                if (isFirstItem(index))
                  const SizedBox(
                    width: 12,
                  ),
                Text(
                  items[index],
                  style: typography.bodyText2.copyWith(
                    color: colorPalette.gray2,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                if (isLastItem(index))
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: colorPalette.gray2,
                      shape: BoxShape.circle,
                    ),
                  )
              ],
            );
          }),
    );
  }

  bool isFirstItem(int index) => index != 0;

  bool isLastItem(int index) => index != items.length - 1;
}
