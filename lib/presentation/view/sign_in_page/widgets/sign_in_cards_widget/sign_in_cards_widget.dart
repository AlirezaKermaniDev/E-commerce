import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class SignInCardsWidget extends StatelessWidget {
  const SignInCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _SignInCardsWidgetWeb(),
      tablet: _SignInCardsWidgetTablet(),
      phone: _SignInCardsWidgetPhone(),
    );
  }
}
