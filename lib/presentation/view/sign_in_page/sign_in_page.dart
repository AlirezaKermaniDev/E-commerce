import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/widgets/sign_in_body_widget/sign_in_body_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  static const String path = "/sign-in";

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      drawer: const DrawerWidget(
        selectedIndex: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignInBodyWidget(),
            SizedBox(
              height: context.isPhone ? 16 : 120,
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}
