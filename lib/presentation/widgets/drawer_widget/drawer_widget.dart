import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/cart_page/cart_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/sign_in_page.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/widgets/drawer_item_widget/drawer_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/search_dialog_widget/search_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.selectedIndex,
  });
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: colorPalette.primary,
      shape: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
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
                    "Pages",
                    style: typography.bodyText5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DrawerItemWidget(
              title: context.locale.footwear,
              onTap: () {
                Scaffold.of(context).closeDrawer();
                context.go(
                  HomePage.path,
                );
              },
              isActive: selectedIndex == 0,
            ),
            DrawerItemWidget(
              title: context.locale.aboutUs,
              onTap: () {
                Scaffold.of(context).closeDrawer();
                context.go(
                  AboutUsPage.path,
                );
              },
              isActive: selectedIndex == 1,
            ),
            DrawerItemWidget(
              title: context.locale.products,
              onTap: () {
                Scaffold.of(context).closeDrawer();
                context.go(
                  ProductsPage.path,
                );
              },
              isActive: selectedIndex == 2,
            ),
            const SizedBox(
              height: 25,
            ),
            Divider(
              thickness: 1.6,
              height: 1,
              color: colorPalette.gray5,
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
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
                    "Menu",
                    style: typography.bodyText5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DrawerItemWidget(
              title: "Profile",
              onTap: () {
                Scaffold.of(context).closeDrawer();
                context.go(
                  SignInPage.path,
                );
              },
              isActive: selectedIndex == 3,
            ),
            DrawerItemWidget(
              title: "Search",
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
            DrawerItemWidget(
              title: "Cart",
              onTap: () {
                Scaffold.of(context).closeDrawer();
                context.go(
                  CartPage.path,
                );
              },
              isActive: selectedIndex == 5,
            ),
          ],
        ),
      ),
    );
  }
}
