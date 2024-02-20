import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

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
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Row(
                children: [
                  BreadcrumbWidget(
                    items: product.categories ?? [],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [Image.network(product.imageUrl ?? "")],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Expanded(
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
                        Row(
                          children: [
                            Text(
                              "Available in",
                              style: typography.bodyText4
                                  .copyWith(color: colorPalette.gray2),
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
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(e)),
                                      ),
                                    ))
                                .toList()
                          ],
                        ),
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
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray2),
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
                        GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 1.7,
                          ),
                          shrinkWrap: true,
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
                              isAvailable:
                                  product.availableSizes!.contains(7.5),
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
                              isAvailable:
                                  product.availableSizes!.contains(9.5),
                            ),
                            SizesItemWidget(
                              value: "10",
                              isAvailable: product.availableSizes!.contains(10),
                            ),
                            SizesItemWidget(
                              value: "10.5",
                              isAvailable:
                                  product.availableSizes!.contains(10.5),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration:
                                      BoxDecoration(color: colorPalette.gray6),
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
                                      border: Border.all(
                                          color: colorPalette.gray6,
                                          width: 1.5)),
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
                                  decoration:
                                      BoxDecoration(color: colorPalette.gray6),
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
                                decoration: BoxDecoration(
                                    color: colorPalette.darkPrimary),
                                child: Center(
                                  child: Text(
                                    "Add to cart",
                                    style: typography.bodyText3
                                        .copyWith(color: colorPalette.primary),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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
                : colorPalette.gray6,
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            widget.value,
            style: typography.bodyText1.copyWith(
              color: widget.isAvailable ? null : colorPalette.gray6,
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
