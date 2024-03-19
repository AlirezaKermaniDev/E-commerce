part of '../sign_in_body_widget.dart';

class _SignInBodyWidgetWeb extends StatelessWidget {
  const _SignInBodyWidgetWeb({
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
              Expanded(child: SignInCardsWidget()),
              Expanded(child: SignInFormWidget()),
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
