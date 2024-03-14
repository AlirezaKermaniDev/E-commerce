import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/address_page/widgets/text_field_widget/text_field_widget.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/widgets/other_sign_in_option_widget/other_sign_in_option_widget.dart';
import 'package:ecommerce_app/presentation/view/sign_up_page/sign_up_page.dart';
import 'package:ecommerce_app/presentation/widgets/animator_text_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/button_widget/button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _SignInFormWidgetWeb(),
      tablet: _SignInFormWidgetWeb(),
      phone: _SignInFormWidgetPhone(),
    );
  }
}
