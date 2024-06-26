import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/header_bloc/header_bloc.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/cart_page/cart_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/sign_in_page.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/widgets/drawer_item_widget/drawer_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/widgets/language_expanded_widget/language_expanded_widget.dart';
import 'package:ecommerce_app/presentation/widgets/search_dialog_widget/search_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'utils.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.selectedIndex,
  });
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 1.w(context) < 500 ? 300 : 350,
      backgroundColor: colorPalette.primary,
      shape: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                _animatorWidgetBuilder(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pages_outlined,
                          color: colorPalette.darkPrimary,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          context.locale.pages,
                          style: typography.bodyText5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 100,
                  child: DrawerItemWidget(
                    title: context.locale.footwear,
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                      context.go(
                        HomePage.path,
                      );
                    },
                    isActive: selectedIndex == 0,
                  ),
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 200,
                  child: DrawerItemWidget(
                    title: context.locale.aboutUs,
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                      context.go(
                        AboutUsPage.path,
                      );
                    },
                    isActive: selectedIndex == 1,
                  ),
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 300,
                  child: DrawerItemWidget(
                    title: context.locale.products,
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                      context.go(
                        ProductsPage.path,
                      );
                    },
                    isActive: selectedIndex == 2,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 400,
                  child: Divider(
                    thickness: 1.6,
                    height: 1,
                    color: colorPalette.gray5,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 400,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu_rounded,
                          color: colorPalette.darkPrimary,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          context.locale.menu,
                          style: typography.bodyText5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 500,
                  child: DrawerItemWidget(
                    title: context.locale.profile,
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                      context.go(
                        SignInPage.path,
                      );
                    },
                    isActive: selectedIndex == 3,
                  ),
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 600,
                  child: DrawerItemWidget(
                    title: context.locale.search,
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                      showDialog(
                          context: context,
                          barrierColor: Colors.black.withOpacity(.12),
                          builder: (context) {
                            return const SearchDialogWidget();
                          });
                    },
                    isActive: selectedIndex == 4,
                  ),
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 700,
                  child: BlocBuilder<HeaderBloc, HeaderState>(
                    builder: (context, state) {
                      return DrawerItemWidget(
                        title: context.locale.cart,
                        badgeText: state.addedToCartProductsCount == 0
                            ? null
                            : state.addedToCartProductsCount.toString(),
                        onTap: () {
                          Scaffold.of(context).closeDrawer();
                          context.go(
                            CartPage.path,
                          );
                        },
                        isActive: selectedIndex == 5,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 800,
                  child: Divider(
                    thickness: 1.6,
                    height: 1,
                    color: colorPalette.gray5,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 800,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: colorPalette.darkPrimary,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          context.locale.settings,
                          style: typography.bodyText5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 800,
                  child: BlocBuilder<HeaderBloc, HeaderState>(
                    builder: (context, state) {
                      return DrawerItemWidget(
                        title: context.locale.darkMode,
                        onTap: () {
                          context
                              .read<HeaderBloc>()
                              .add(const HeaderEvent.changeThemeMode());
                        },
                        isActive: false,
                        switchValue: _darkModeValue(),
                      );
                    },
                  ),
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 1000,
                  child: BlocBuilder<HeaderBloc, HeaderState>(
                    builder: (context, state) {
                      return DrawerItemWidget(
                        title: context.locale.language,
                        onTap: () {},
                        isActive: false,
                        expanded: const LanguagesExpandedWidget(),
                        valueText: getIt<LocalStorage>()
                            .getLocale()
                            .toLanguageName(context),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
