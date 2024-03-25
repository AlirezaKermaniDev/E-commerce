part of '../join_our_club_banner_widget.dart';

class _JoinOurClubBannerWidgetPhone extends StatelessWidget {
  const _JoinOurClubBannerWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(gradient: colorPalette.gradient1),
      child: Stack(
        children: [
          _shape1(),
          _shape2(),
          _shape3(),
          _shape4(),
          Center(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: TextHighlight(
                        text: context.locale.joinOurCustomersClub,
                        textAlign: TextAlign.center,
                        textStyle: typography.h4Title
                            .copyWith(color: colorPalette.primary, height: 1),
                        words: {
                          "25% ${context.locale.sale}": HighlightedWord(
                            textStyle: typography.h4Title,
                          )
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
