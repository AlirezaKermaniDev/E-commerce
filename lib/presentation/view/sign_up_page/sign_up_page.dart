import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/sign_up_page/widgets/sign_up_cards_widget/sign_up_cards_widget.dart';
import 'package:ecommerce_app/presentation/view/sign_up_page/widgets/sign_up_form_widget/sign_up_form_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  static const String path = "/sign-up";

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      drawer: const DrawerWidget(
        selectedIndex: 3,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1200,
              child: Stack(children: [
                const Row(
                  children: [
                    Expanded(child: SignUpFormWidget()),
                    Expanded(child: SignUpCardsWidget()),
                  ],
                ),
                HeaderWidget(
                  selectedIndex: 3,
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
