import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/sign_up_page/widgets/sign_up_cards_widget/sign_up_cards_widget.dart';
import 'package:ecommerce_app/presentation/view/sign_up_page/widgets/sign_up_form_widget/sign_up_form_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class SignUpBodyWidget extends StatelessWidget {
  const SignUpBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _SignUpBodyWidgetWeb(),
      tablet: _SignUpBodyWidgetWeb(),
      phone: _SignUpBodyWidgetPhone(),
    );
  }
}
