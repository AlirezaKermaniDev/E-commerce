import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key, required this.lable, required this.onChange});
  final String lable;
  final ValueChanged<String> onChange;
  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(
      web: _TextFieldWidgetWeb(lable: lable,onChange: onChange,),
      tablet: const _TextFieldWidgetTablet(),
      phone: const _TextFieldWidgetPhone(),
    );
  }
}
