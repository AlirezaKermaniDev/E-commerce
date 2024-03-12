part of '../sign_in_form_widget.dart';

class _SignInFormWidgetWeb extends StatelessWidget {
  const _SignInFormWidgetWeb({
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
              AnimatorTextWidget(
                context.locale.signInToKicks,
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
                delay: const Duration(milliseconds: 100),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: TextHighlight(
                  text: "${context.locale.notAMember} ${context.locale.joinUs}",
                  textStyle:
                      typography.bodyText2.copyWith(color: colorPalette.gray1),
                  words: {
                    context.locale.joinUs: HighlightedWord(
                      textStyle: typography.bodyText2.copyWith(
                        color: colorPalette.accent1,
                      ),
                      onTap: () {
                        context.go(SignUpPage.path);
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
                delay: const Duration(milliseconds: 200),
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
                delay: const Duration(milliseconds: 300),
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
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatorWidget(
                    withFadeTransition: true,
                    delay: const Duration(milliseconds: 400),
                    slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1),
                      end: Offset.zero,
                    ),
                    child: Text(
                      context.locale.recoveryPassword,
                      style: typography.bodyText4
                          .copyWith(color: colorPalette.gray2),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 500),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: ButtonWidget(
                  title: context.locale.signIn,
                  color: colorPalette.accent1,
                  height: 55,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 600),
                slideTransition: Tween<Offset>(
                  begin: const Offset(0, .1),
                  end: Offset.zero,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      height: 1.3,
                      color: colorPalette.gray3,
                      thickness: 1.3,
                    )),
                    const SizedBox(
                      width: 32,
                    ),
                    Text(
                      context.locale.orContinueWith,
                      style: typography.bodyText4
                          .copyWith(color: colorPalette.gray2),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                        child: Divider(
                      height: 1.3,
                      color: colorPalette.gray4,
                      thickness: 1.3,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Row(
                children: [
                  Expanded(
                    child: AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 700),
                      slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1),
                        end: Offset.zero,
                      ),
                      child: OtherSignInOptionWidget(
                        icon: SvgPicture.asset(
                          CustomIcons.googleLogo,
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 800),
                      slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1),
                        end: Offset.zero,
                      ),
                      child: const OtherSignInOptionWidget(
                        withShadow: true,
                        icon: Icon(
                          Icons.apple_rounded,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 900),
                      slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1),
                        end: Offset.zero,
                      ),
                      child: OtherSignInOptionWidget(
                        icon: Icon(
                          Icons.facebook_rounded,
                          color: colorPalette.accent1,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
