import 'package:country_flags/country_flags.dart';
import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/header_bloc/header_bloc.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/cart_page/cart_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/sign_in_page.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/widgets/header_tab_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:ecommerce_app/presentation/widgets/search_dialog_widget/search_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'layouts/phone.dart';
part "layouts/tablet.dart";
part "layouts/web.dart";

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.selectedIndex,
    required this.backgroundColor,
    this.forgroundColor,
  });
  final int selectedIndex;
  final Color backgroundColor;
  final Color? forgroundColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _HeaderWidgetWeb(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor,
        forgroundColor: forgroundColor,
      ),
      phone: _HeaderWidgetPhone(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor,
        forgroundColor: forgroundColor,
      ),
      tablet: _HeaderWidgetTablet(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor,
        forgroundColor: forgroundColor,
      ),
    );
  }
}
