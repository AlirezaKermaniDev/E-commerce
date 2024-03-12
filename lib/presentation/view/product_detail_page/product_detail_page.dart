import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/alternative_products_widget/alternative_products_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/breadcrumb_widget/breadcrumb_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/join_our_club_banner_widget/join_our_club_banner_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/product_info_widget/product_info_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => getIt<ProductDetailBloc>(),
      child: Scaffold(
        backgroundColor: colorPalette.primary,
        body: BlocListener<ProductDetailBloc, ProductDetailState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: colorPalette.accent4,
                  content: Text(
                    state.error ?? "",
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.primary),
                  )));
            }
          },
          child: SingleChildScrollView(
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
                ProductInfoWidget(item: product),
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
        ),
      ),
    );
  }
}
