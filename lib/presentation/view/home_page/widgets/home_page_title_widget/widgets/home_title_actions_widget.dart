part of '../home_page_title_widget.dart';

class HomeTitleActionsWidget extends StatelessWidget {
  const HomeTitleActionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          context.isPhone ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        // Home page landing actions button
        _widgetAnimatorBuilder(
          millisecondDelay: 2700,
          child: ButtonWidget(
            title: context.locale.shopNow,
            color: colorPalette.accent4,
          ),
        ),
        const SizedBox(
          width: 64,
        ),

        // Home page landing actions like button
        _widgetAnimatorBuilder(
          millisecondDelay: 2900,
          child: Icon(
            FontAwesome.heart,
            color: colorPalette.accent4,
          ),
        )
      ],
    );
  }
}
