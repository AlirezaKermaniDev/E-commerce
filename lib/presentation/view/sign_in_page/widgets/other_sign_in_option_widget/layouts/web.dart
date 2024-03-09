part of '../other_sign_in_option_widget.dart';

class _OtherSignInOptionWidgetWeb extends StatelessWidget {
  const _OtherSignInOptionWidgetWeb({
    super.key,
    required this.icon,
    this.withShadow = false,
  });
  final Widget icon;
  final bool withShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colorPalette.primary,
          boxShadow: withShadow
              ? const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 6))
                ]
              : null,
          border: withShadow
              ? null
              : Border.all(
                  width: 1.3,
                  color: colorPalette.gray4,
                )),
      child: Center(child: icon),
    );
  }
}
