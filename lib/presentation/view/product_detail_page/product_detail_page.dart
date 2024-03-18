import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/alternative_products_widget/alternative_products_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/breadcrumb_widget/breadcrumb_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/join_our_club_banner_widget/join_our_club_banner_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/product_info_widget/product_info_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailPage extends StatelessWidget {
  static const String path = "/product-detail";
  final String productId;

  const ProductDetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductDetailBloc>()
        ..add(ProductDetailEvent.getProduct(productId: productId)),
      child: Scaffold(
        backgroundColor: colorPalette.primary,
        drawer: const DrawerWidget(
          selectedIndex: 2,
        ),
        body: BlocListener<ProductDetailBloc, ProductDetailState>(
          listener: _stateListener,
          child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
            builder: (context, state) {
              if (state.product == null) {
                return const SizedBox();
              }
              return SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderWidget(
                      selectedIndex: 2,
                      backgroundColor: colorPalette.primary,
                    ),
                    if (!context.isPhone)
                      Divider(
                        color: colorPalette.gray5,
                        height: 1,
                      ),
                    _breadcrumbBuilderWidget(context, state.product!),
                    ProductInfoWidget(item: state.product!),
                    AlternativeProductsWidget(
                      item: state.product!,
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
              );
            },
          ),
        ),
      ),
    );
  }

  ConstraintsWidget _breadcrumbBuilderWidget(
      BuildContext context, ProductEntity product) {
    return ConstraintsWidget(
      child: Row(
        children: [
          Padding(
            // To refresh the padding when screen size changed
            padding: EdgeInsets.symmetric(
              horizontal: context.isTablet
                  ? getIt<SizeConfig>().padding
                  : getIt<SizeConfig>().padding,
            ),
            child: BreadcrumbWidget(
              items: product.categories ?? [],
            ),
          ),
        ],
      ),
    );
  }

  void _stateListener(context, state) {
    if (state.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: colorPalette.accent4,
          content: Text(
            state.error ?? "",
            style: typography.bodyText2.copyWith(color: colorPalette.primary),
          )));
    }
  }
}
