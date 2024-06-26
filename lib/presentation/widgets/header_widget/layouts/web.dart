part of '../header_widget.dart';

class _HeaderWidgetWeb extends StatelessWidget {
  const _HeaderWidgetWeb(
      {super.key,
      required this.selectedIndex,
      required this.backgroundColor,
      this.forgroundColor});

  final int selectedIndex;
  final Color backgroundColor;
  final Color? forgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: SizedBox(
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 70, width: 70, child: Image.asset(AssetHandler.logo)),
              selectedIndex == 4
                  ? const SizedBox()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            HeaderTabItemWidget(
                              title: context.locale.footwear,
                              isSelected: selectedIndex == 0,
                              forgroundColor: forgroundColor,
                              onTap: () {
                                context.go(
                                  HomePage.path,
                                );
                              },
                            ),
                            const SizedBox(
                              width: 56,
                            ),
                            HeaderTabItemWidget(
                              title: context.locale.aboutUs,
                              isSelected: selectedIndex == 1,
                              forgroundColor: forgroundColor,
                              onTap: () {
                                context.go(AboutUsPage.path);
                              },
                            ),
                            const SizedBox(
                              width: 56,
                            ),
                            HeaderTabItemWidget(
                              title: context.locale.products,
                              isSelected: selectedIndex == 2,
                              forgroundColor: forgroundColor,
                              onTap: () {
                                context.go(ProductsPage.path);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          barrierColor: Colors.black.withOpacity(.12),
                          builder: (context) {
                            return const SearchDialogWidget();
                          });
                    },
                    child: SizedBox(
                      width: 25,
                      child: SvgPicture.asset(
                        CustomIcons.search,
                        color: selectedIndex == 3
                            ? colorPalette.accent4
                            : forgroundColor ?? colorPalette.darkPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      context.go(
                        SignInPage.path,
                      );
                    },
                    child: SizedBox(
                      width: 25,
                      child: SvgPicture.asset(
                        CustomIcons.user,
                        color: selectedIndex == 4
                            ? colorPalette.accent4
                            : forgroundColor ?? colorPalette.darkPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      context.go(
                        CartPage.path,
                      );
                    },
                    child: SizedBox(
                      width: 35,
                      height: 35,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 25,
                              child: SvgPicture.asset(
                                CustomIcons.shopping,
                                color: selectedIndex == 5
                                    ? colorPalette.accent4
                                    : forgroundColor ??
                                        colorPalette.darkPrimary,
                              ),
                            ),
                          ),
                          BlocBuilder<HeaderBloc, HeaderState>(
                            builder: (context, state) {
                              if (state.addedToCartProductsCount == 0) {
                                return const SizedBox();
                              }
                              return Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    color: colorPalette.accent4,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      state.addedToCartProductsCount.toString(),
                                      style: typography.bodyText1.copyWith(
                                          fontSize: 11,
                                          color: colorPalette.primary),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      context
                          .read<HeaderBloc>()
                          .add(const HeaderEvent.changeThemeMode());
                    },
                    child: Icon(
                      _themeModeIcon(),
                      color: forgroundColor ?? colorPalette.darkPrimary,
                      size: 26,
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: DropdownButton(
                      iconSize: 0,
                      underline: const SizedBox(),
                      items: _languageItemsWidget(),
                      onChanged: (value) {
                        context.read<HeaderBloc>().add(
                            HeaderEvent.changeLanguage(locale: Locale(value!)));
                      },
                      value: getIt<LocalStorage>().getLocale().languageCode,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _languageItemsWidget() {
    return AppLocalizations.supportedLocales
        .map((e) => DropdownMenuItem(
            value: e.languageCode,
            child: CountryFlag.fromLanguageCode(
              e.languageCode.replaceAll("ar", "ar-SA"),
              height: 30,
              width: 30,
              borderRadius: 8,
            )))
        .toList();
  }

  IconData _themeModeIcon() {
    return getIt<LocalStorage>().getTheme().themeMode == ThemeMode.dark
        ? Icons.light_mode_outlined
        : Icons.dark_mode_outlined;
  }
}
