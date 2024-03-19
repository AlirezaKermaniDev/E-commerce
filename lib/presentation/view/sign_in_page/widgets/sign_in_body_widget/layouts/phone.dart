part of '../sign_in_body_widget.dart';

class _SignInBodyWidgetPhone extends StatelessWidget {
  const _SignInBodyWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Column(
        children: [
          HeaderWidget(
            selectedIndex: 3,
            backgroundColor: colorPalette.primary.withOpacity(0),
          ),
          const SignInFormWidget(),
          const SizedBox(
            height: 55,
          ),
          const SizedBox(height: 700, child: SignInCardsWidget()),
        ],
      ),
    );
  }
}
