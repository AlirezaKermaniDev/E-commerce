part of '../text_field_widget.dart';

class _TextFieldWidgetWeb extends StatelessWidget {
  const _TextFieldWidgetWeb(
      {super.key,
      required this.lable,
      required this.onChange,
      this.onTapSuffix,
      this.suffixIcon});
  final String lable;
  final ValueChanged<String> onChange;
  final VoidCallback? onTapSuffix;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: typography.bodyText2,
      onChanged: onChange,
      onSubmitted: onTapSuffix != null
          ? (_) {
              onTapSuffix!();
            }
          : null,
      decoration: InputDecoration(
        border: _border(false),
        enabledBorder: _border(false),
        focusedBorder: _border(true),
        disabledBorder: _border(false),
        label: Text(
          lable,
          style: typography.bodyText2.copyWith(color: colorPalette.gray3),
        ),
        suffixIcon: onTapSuffix != null
            ? Padding(
                padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                child: InkWell(
                  onTap: onTapSuffix,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: suffixIcon ??
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: SvgPicture.asset(
                          CustomIcons.search,
                          color: colorPalette.darkPrimary,
                        ),
                      ),
                ),
              )
            : null,
      ),
    );
  }

  OutlineInputBorder _border(bool isfocused) {
    return OutlineInputBorder(
      borderSide: BorderSide(
          color: isfocused ? colorPalette.darkPrimary : colorPalette.gray5,
          width: isfocused ? 2 : 1.6),
    );
  }
}
