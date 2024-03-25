part of '../join_our_club_banner_widget.dart';

class _JoinOurClubBannerWidgetWeb extends StatelessWidget {
  const _JoinOurClubBannerWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: double.infinity,
      decoration: BoxDecoration(gradient: colorPalette.gradient1),
      child: ConstraintsWidget(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: TextHighlight(
                          text: context.locale.joinOurCustomersClub,
                          textAlign: TextAlign.center,
                          textStyle: typography.h2Title
                              .copyWith(color: colorPalette.primary, height: 1),
                          words: {
                            "25% ${context.locale.sale}": HighlightedWord(
                                textStyle: typography.h2Title,
                                padding: EdgeInsets.only(
                                    bottom: context.isOnMaxWidth ? 0 : 30))
                          },
                        ),
                      ),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonWidget(
                          title: context.locale.signUpForFree,
                          color: colorPalette.accent1,
                          shadowColor: Colors.black26,
                          height: 60,
                          width: 290,
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
            _shape1(),
            _shape2(),
            _shape3(),
            _shape4(),
          ],
        ),
      ),
    );
  }


}
