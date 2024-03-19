import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/widgets/sign_in_cards_widget/sign_in_cards_widget.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/widgets/sign_in_form_widget/sign_in_form_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class SignInBodyWidget extends StatelessWidget {
  const SignInBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _SignInBodyWidgetWeb(),
      tablet: _SignInBodyWidgetWeb(),
      phone: _SignInBodyWidgetPhone(),
    );
  }
}
