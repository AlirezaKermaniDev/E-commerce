part of '../join_our_club_banner_widget.dart';

class _JoinOurClubBannerWidgetWeb extends StatelessWidget {
  const _JoinOurClubBannerWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 1.w(context),
      decoration: BoxDecoration(gradient: colorPalette.gradient1),
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: TextHighlight(
                        text: "Join our customers club & get 25% sale discount",
                        textStyle: typography.h2Title
                            .copyWith(color: colorPalette.primary, height: 1),
                        words: {
                          "25% sale": HighlightedWord(
                              textStyle: typography.h2Title,
                              padding: const EdgeInsets.only(bottom: 30))
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        title: "Sign up for free",
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
          Positioned(
            left: -30,
            top: -30,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            left: 60,
            top: 60,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 60,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  gradient: colorPalette.gradient1, shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
