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
  bool isTapDown = false;

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
        onTapDown: onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 30),
            height: isTapDown ? 60 : 70,
            width: isTapDown ? 450 : 500,
            decoration: BoxDecoration(color: colorPalette.darkPrimary),
            child: Center(
              child: Text(
                "Add to cart",
                style:
                    typography.bodyText3.copyWith(color: colorPalette.primary),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTap() {
    setState(() {
      isTapDown = true;
    });
  }

  void onTapDown(_) {
    setState(() {
      isTapDown = true;
    });
  }

  void _onTapUp(_) {
    setState(() {
      isTapDown = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      isTapDown = false;
    });
  }
}
