part of '../sign_up_body_widget.dart';

class _SignUpBodyWidgetWeb extends StatelessWidget {
  const _SignUpBodyWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.h(context),
      child: Stack(children: [
        const ConstraintsWidget(
          child: Row(
            children: [
              Expanded(child: SignUpFormWidget()),
              Expanded(child: SignUpCardsWidget()),
            ],
          ),
        ),
        HeaderWidget(
          selectedIndex: 3,
          backgroundColor: colorPalette.primary.withOpacity(0),
        ),
      ]),
    );
  }
}
