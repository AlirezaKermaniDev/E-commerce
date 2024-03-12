import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.lable,
      required this.onChange,
      this.onTapSuffix,
      this.suffixIcon});
  final String lable;
  final ValueChanged<String> onChange;
  final VoidCallback? onTapSuffix;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _TextFieldWidgetWeb(
        lable: lable,
        onChange: onChange,
        onTapSuffix: onTapSuffix,
        suffixIcon: suffixIcon,
      ),
      tablet: _TextFieldWidgetWeb(
        lable: lable,
        onChange: onChange,
        onTapSuffix: onTapSuffix,
        suffixIcon: suffixIcon,
      ),
      phone: const _TextFieldWidgetPhone(),
    );
  }
}
