import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/address_page/widgets/text_field_widget/text_field_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AddressFormFieldsWidget extends StatelessWidget {
  const AddressFormFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _AddressFormFieldsWidgetWeb(),
      tablet: _AddressFormFieldsWidgetTablet(),
      phone: _AddressFormFieldsWidgetPhone(),
    );
  }
}
