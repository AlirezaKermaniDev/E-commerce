import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvailablePaymentMethodsWidget extends StatelessWidget {
  const AvailablePaymentMethodsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          CustomIcons.paypalLogo,
        ),
        const SizedBox(
          width: 16,
        ),
        SvgPicture.asset(
          CustomIcons.visaLogo,
        ),
        const SizedBox(
          width: 16,
        ),
        SvgPicture.asset(
          CustomIcons.klarnaLogo,
        ),
      ],
    );
  }
}
