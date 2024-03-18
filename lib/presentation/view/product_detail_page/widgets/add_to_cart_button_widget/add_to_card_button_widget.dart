import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToCartButtonWidget extends StatefulWidget {
  const AddToCartButtonWidget({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  State<AddToCartButtonWidget> createState() => _AddToCartButtonWidgetState();
}

class _AddToCartButtonWidgetState extends State<AddToCartButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      delay: const Duration(milliseconds: 2200),
      slideTransition:
          Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
      child: InkWell(
        onTap: () {
          context
              .read<ProductDetailBloc>()
              .add(ProductDetailEvent.addToCart(product: widget.item));
        },
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Center(
          child: Container(
            height: context.isPhone ? 50 : 70,
            width: double.infinity,
            decoration: BoxDecoration(color: colorPalette.darkPrimary),
            child: Center(
              child: Text(
                context.locale.addToCart,
                style: context.isPhone
                    ? typography.bodyText2.copyWith(color: colorPalette.primary)
                    : typography.bodyText3
                        .copyWith(color: colorPalette.primary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
