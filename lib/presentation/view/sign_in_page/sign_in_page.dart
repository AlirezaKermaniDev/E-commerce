import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/widgets/sign_in_cards_widget/sign_in_cards_widget.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/widgets/sign_in_form_widget/sign_in_form_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  static const String path = "/sign-in";

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1200,
              child: Stack(children: [
                const Row(
                  children: [
                    Expanded(child: SignInCardsWidget()),
                    Expanded(child: SignInFormWidget()),
                  ],
                ),
                HeaderWidget(
                  selectedIndex: 5,
                  backgroundColor: colorPalette.primary.withOpacity(0),
                ),
              ]),
            ),
            const SizedBox(
              height: 120,
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}