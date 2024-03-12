part of '../sign_up_form_widget.dart';

class _SignUpFormWidgetWeb extends StatelessWidget {
  const _SignUpFormWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorPalette.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              AnimatorTextWidget(
                context.locale.createYourKicksAccount,
                style: typography.h4Title,
                initialDelay: const Duration(milliseconds: 100),
                spaceDelay: Duration.zero,
                incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                    blur: const Offset(0, 20),
                    duration: const Duration(milliseconds: 170)),
              ),
              const SizedBox(
                height: 8,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 200),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextHighlight(
                  text: context.locale.alreadyHaveAnCccount,
                  textStyle:
                      typography.bodyText2.copyWith(color: colorPalette.gray1),
                  words: {
                    context.locale.logIn: HighlightedWord(
                      textStyle: typography.bodyText2.copyWith(
                        color: colorPalette.accent1,
                      ),
                      onTap: () {
                        context.go(SignInPage.path);
                      },
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: colorPalette.accent1),
                        ),
                      ),
                    )
                  },
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 300),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextFieldWidget(
                  lable: context.locale.fullName,
                  onChange: (_) {},
                  suffixIcon: Icon(
                    Icons.person_outline_rounded,
                    size: 26,
                    color: colorPalette.gray4,
                  ),
                  onTapSuffix: () {},
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 400),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextFieldWidget(
                  lable: context.locale.email,
                  onChange: (_) {},
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    size: 26,
                    color: colorPalette.gray4,
                  ),
                  onTapSuffix: () {},
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 500),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextFieldWidget(
                  lable: context.locale.password,
                  onChange: (_) {},
                  suffixIcon: Icon(
                    Icons.password_rounded,
                    size: 26,
                    color: colorPalette.gray4,
                  ),
                  onTapSuffix: () {},
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 600),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextFieldWidget(
                  lable: context.locale.dateOfBirth,
                  onChange: (_) {},
                  suffixIcon: Icon(
                    Icons.calendar_today_rounded,
                    size: 26,
                    color: colorPalette.gray4,
                  ),
                  onTapSuffix: () {},
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatorWidget(
                    withFadeTransition: true,
                    delay: const Duration(milliseconds: 700),
                    slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1),
                      end: Offset.zero,
                    ),
                    child: Text(
                      context.locale.getYearlyDiscountOnYourBirthday,
                      style: typography.bodyText2
                          .copyWith(color: colorPalette.gray3),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 800),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextFieldWidget(
                  lable: context.locale.country,
                  onChange: (_) {},
                  suffixIcon: Icon(
                    Icons.language_rounded,
                    size: 26,
                    color: colorPalette.gray4,
                  ),
                  onTapSuffix: () {},
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 900),
                      slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1),
                        end: Offset.zero,
                      ),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.6, color: colorPalette.gray5)),
                        child: Center(
                          child: Text(
                            context.locale.male,
                            style: typography.bodyText2
                                .copyWith(color: colorPalette.gray3),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 1000),
                      slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1),
                        end: Offset.zero,
                      ),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1.6, color: colorPalette.gray5)),
                        child: Center(
                          child: Text(
                            context.locale.female,
                            style: typography.bodyText2
                                .copyWith(color: colorPalette.gray3),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 1100),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                      height: 27,
                      child: Checkbox.adaptive(
                        value: true,
                        onChanged: (_) {},
                        activeColor: colorPalette.accent1,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        context.locale.signUpForEmailsToGetUpdatesFromShop,
                        style: typography.bodyText2
                            .copyWith(color: colorPalette.gray3),
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 1200),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextHighlight(
                  text: context.locale.dyCreatingAnAccountYouAgree,
                  textStyle:
                      typography.bodyText2.copyWith(color: colorPalette.gray3),
                  textAlign: TextAlign.center,
                  words: {
                    context.locale.privacyPolicy: HighlightedWord(
                      textStyle: typography.bodyText2.copyWith(
                        color: colorPalette.accent1,
                      ),
                      onTap: () {},
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: colorPalette.accent1),
                        ),
                      ),
                    ),
                    context.locale.termOfUse: HighlightedWord(
                      textStyle: typography.bodyText2.copyWith(
                        color: colorPalette.accent1,
                      ),
                      onTap: () {},
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: colorPalette.accent1),
                        ),
                      ),
                    ),
                  },
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 1300),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: ButtonWidget(
                  title: context.locale.joinUs,
                  color: colorPalette.accent1,
                  height: 55,
                  width: double.infinity,
                ),
              ),
            ]),
      ),
    );
  }
}
