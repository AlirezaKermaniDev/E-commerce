part of 'product_detail_widget.dart';

class MaterialitemWidget extends StatelessWidget {
  const MaterialitemWidget({
    super.key,
    required this.value,
  });
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Text(
        value,
        style: typography.bodyText1.copyWith(color: colorPalette.gray2),
      ),
    );
  }
}

Widget _animatorWidgetBuilder(
    {required Widget child, required int millisecondsDelay}) {
  return AnimatorWidget(
    withFadeTransition: true,
    delay: Duration(milliseconds: millisecondsDelay),
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
    child: child,
  );
}
