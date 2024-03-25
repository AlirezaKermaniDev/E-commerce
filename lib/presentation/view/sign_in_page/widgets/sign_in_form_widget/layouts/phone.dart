part of '../sign_in_form_widget.dart';

class _SignInFormWidgetPhone extends StatelessWidget {
  const _SignInFormWidgetPhone({
    super.key,
  });
  static const double _textFieldHeight = 55;
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
              _animatorWidgetBuilder(
                millisecondsDelay: 100,
                child: TextHighlight(
                  text: "${context.locale.notAMember} ${context.locale.joinUs}",
                  textStyle:
                      typography.bodyText2.copyWith(color: colorPalette.gray1),
                  words: {
                    context.locale.joinUs: HighlightedWord(
                      textStyle: typography.bodyText2.copyWith(
                        color: colorPalette.accent1,
                      ),
                      onTap: () => _onTapJoinUs(context),
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
                height: 25,
              ),
              _animatorWidgetBuilder(
                millisecondsDelay: 200,
                child: SizedBox(
                  height: _textFieldHeight,
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
              ),
              const SizedBox(
                height: 12,
              ),
              _animatorWidgetBuilder(
                millisecondsDelay: 300,
                child: SizedBox(
                  height: _textFieldHeight,
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
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _animatorWidgetBuilder(
                    millisecondsDelay: 400,
                    child: Text(
                      context.locale.recoveryPassword,
                      style: typography.bodyText4
                          .copyWith(color: colorPalette.gray2),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              _animatorWidgetBuilder(
                millisecondsDelay: 500,
                child: ButtonWidget(
                  title: context.locale.signIn,
                  color: colorPalette.accent1,
                  height: 55,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              _animatorWidgetBuilder(
                millisecondsDelay: 600,
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
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: _animatorWidgetBuilder(
                      millisecondsDelay: 700,
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
                    child: _animatorWidgetBuilder(
                      millisecondsDelay: 800,
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
                    child: _animatorWidgetBuilder(
                      millisecondsDelay: 900,
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
