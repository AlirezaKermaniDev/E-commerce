part of '../sign_up_body_widget.dart';

class _SignUpBodyWidgetPhone extends StatelessWidget {
  const _SignUpBodyWidgetPhone({
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
          const SignUpFormWidget(),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(height: 700, child: SignUpCardsWidget()),
        ],
      ),
    );
  }
}
