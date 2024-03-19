import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/arrow_title_button_widget/arrow_title_button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class PurchaseActionButtons extends StatelessWidget {
  const PurchaseActionButtons(
      {super.key,
      required this.continueButtonText,
      required this.backButtonText,
      required this.onTapContinue});

  final String continueButtonText;
  final String backButtonText;
  final VoidCallback onTapContinue;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _PurchaseActionButtonsWeb(
        continueButtonText: continueButtonText,
        backButtonText: backButtonText,
        onTapContinue: onTapContinue,
      ),
      tablet: _PurchaseActionButtonsTablet(
        continueButtonText: continueButtonText,
        backButtonText: backButtonText,
        onTapContinue: onTapContinue,
      ),
      phone: _PurchaseActionButtonsPhone(
        continueButtonText: continueButtonText,
        backButtonText: backButtonText,
        onTapContinue: onTapContinue,
      ),
    );
  }
}
