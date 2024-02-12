import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  static const String path = "/products";

  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductsBloc>()..add(const ProductsEvent.getProduts()),
      child: Scaffold(
        backgroundColor: colorPalette.primary,
        body: SingleChildScrollView(
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
                  Text(
                    "24 items",
                    style: typography.bodyText1.copyWith(
                      color: colorPalette.gray1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1000,
                    width: 350,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(child: BlocBuilder<ProductsBloc, ProductsState>(
                    builder: (context, state) {
                      return GridView.builder(
                          itemCount: state.products.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: .8,
                          ),
                          itemBuilder: ((context, index) {
                            return ProductsItemWidget(
                              item: state.products[index],
                            );
                          }));
                    },
                  )),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

class ProductsItemWidget extends StatelessWidget {
  const ProductsItemWidget({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorPalette.gray6,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        item.imageUrl ?? "",
                        fit: BoxFit.fitWidth,
                        errorBuilder: (context, error, stackTrace) {
                          return const SizedBox();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title ?? "",
                  style: typography.h5Title.copyWith(fontSize: 18),
                ),
                Icon(
                  Icons.favorite_border,
                  color: colorPalette.accent4,
                )
              ],
            ),
            Text(
              item.category?.title ?? "",
              style: typography.bodyText2.copyWith(color: colorPalette.gray2),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "\$${item.price}",
              style: typography.bodyText1.copyWith(),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
