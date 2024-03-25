part of 'add_to_cart_buttons_widget.dart';

void onRemoveCountTap(BuildContext context) {
  context
      .read<ProductDetailBloc>()
      .add(const ProductDetailEvent.decreaseCount());
}

void onAddCountTap(BuildContext context) {
  context
      .read<ProductDetailBloc>()
      .add(const ProductDetailEvent.increaseCount());
}

Widget _animatorWidgetBuilder({required Widget child}) {
  return AnimatorWidget(
    withFadeTransition: true,
    delay: const Duration(milliseconds: 2100),
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
    child: child,
  );
}
