import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/arrow_title_button_widget/arrow_title_button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AboutUsOurProductsItemWidget extends StatelessWidget {
  const AboutUsOurProductsItemWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.shapeGradient,
      required this.imagePath});
  final String title;
  final String description;
  final Gradient shapeGradient;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AboutUsOurProductsItemWidgetWeb(
        title: title,
        description: description,
        shapeGradient: shapeGradient,
        imagePath: imagePath,
      ),
      tablet: const _AboutUsOurProductsItemWidgetTablet(),
      phone: const _AboutUsOurProductsItemWidgetPhone(),
    );
  }
}
