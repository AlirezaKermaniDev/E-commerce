import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/subscribe_widget/subscribe_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filters_widget/filters_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/products_list_widget/products_list_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/products_page_title_widget/products_page_title_widget.dart';
import 'package:ecommerce_app/presentation/widgets/widget_stucker.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'utils.dart';

class ProductsPage extends StatelessWidget {
  static const String path = "/products";

  ProductsPage({super.key});

  final WidgetStuckerController _controller =
      WidgetStuckerController(stickWidgetVerticalyPadding: 50);

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
        body: WidgetStucker(
          controller: _controller,
          builder: () => ConstraintsWidget(
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: _controller.scrollController,
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
                      ProductsListWidget(
                        stickWidgetKey: _controller.stickWidgetKey,
                        scrollableWidgetKey: _controller.scrollableWidgetKey,
                        isStuckTop: _controller.isStuckTop,
                      ),
                      const SubscribeWidget(
                        fullWidth: true,
                      ),
                      const FooterWidget(),
                    ],
                  ),
                ),
                if (_shouldStuckWidgetTop(context, _controller.isStuckTop))
                  Positioned(
                    top: _topPosition(_controller),
                    left: _leftPosition(context),
                    right: _rightPosition(context),
                    child: filtersBuilder(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
