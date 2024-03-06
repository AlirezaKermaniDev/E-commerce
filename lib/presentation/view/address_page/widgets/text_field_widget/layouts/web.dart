part of '../text_field_widget.dart';

class _TextFieldWidgetWeb extends StatelessWidget {
  const _TextFieldWidgetWeb(
      {super.key, required this.lable, required this.onChange});
  final String lable;
  final ValueChanged<String> onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: typography.bodyText2,
      onChanged: onChange,
      decoration: InputDecoration(
          border: _border(false),
          enabledBorder: _border(false),
          focusedBorder: _border(true),
          disabledBorder: _border(false),
          label: Text(
            lable,
            style: typography.bodyText2.copyWith(color: colorPalette.gray3),
          )),
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
