import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductsItemDeleteButtonWidget extends StatefulWidget {
  const CartProductsItemDeleteButtonWidget({
    super.key,
    required this.productId,
  });

  final String productId;

  @override
  State<CartProductsItemDeleteButtonWidget> createState() =>
      _CartProductsItemDeleteButtonWidgetState();
}

class _CartProductsItemDeleteButtonWidgetState
    extends State<CartProductsItemDeleteButtonWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context
            .read<CartBloc>()
            .add(CartEvent.deleteProduct(productId: widget.productId));
      },
      onHover: _onHover,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        color: _isHover ? colorPalette.accent4 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            context.locale.delete,
            style: typography.bodyText1.copyWith(
              color: !_isHover ? colorPalette.accent4 : Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }
}
