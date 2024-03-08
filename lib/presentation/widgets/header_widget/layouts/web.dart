part of '../header_widget.dart';

class _HeaderWidgetWeb extends StatefulWidget {
  const _HeaderWidgetWeb(
      {super.key,
      required this.selectedIndex,
      required this.backgroundColor,
      this.forgroundColor});

  final int selectedIndex;
  final Color backgroundColor;
  final Color? forgroundColor;

  @override
  State<_HeaderWidgetWeb> createState() => _HeaderWidgetWebState();
}

class _HeaderWidgetWebState extends State<_HeaderWidgetWeb> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    getIt<EventBus>().on<AddToCartProductEntity>().listen((event) {
      setState(() {
        count++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      HeaderTabItemWidget(
                        title: context.locale.footwear,
                        isSelected: widget.selectedIndex == 0,
                        forgroundColor: widget.forgroundColor,
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
                        isSelected: widget.selectedIndex == 1,
                        forgroundColor: widget.forgroundColor,
                        onTap: () {
                          context.go(AboutUsPage.path);
                        },
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                      HeaderTabItemWidget(
                        title: context.locale.products,
                        isSelected: widget.selectedIndex == 2,
                        forgroundColor: widget.forgroundColor,
                        onTap: () {
                          context.go(ProductsPage.path);
                        },
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                      HeaderTabItemWidget(
                        title: context.locale.sale,
                        isSelected: widget.selectedIndex == 3,
                        forgroundColor: widget.forgroundColor,
                        onTap: () {},
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
                        color:
                            widget.forgroundColor ?? colorPalette.darkPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    width: 25,
                    child: SvgPicture.asset(
                      CustomIcons.user,
                      color: widget.forgroundColor ?? colorPalette.darkPrimary,
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
                                color: widget.selectedIndex == 6
                                    ? colorPalette.accent4
                                    : widget.forgroundColor ??
                                        colorPalette.darkPrimary,
                              ),
                            ),
                          ),
                          if (count != 0)
                            Align(
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
                                    count.toString(),
                                    style: typography.bodyText1.copyWith(
                                        fontSize: 11,
                                        color: colorPalette.primary),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
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
}


class HeaderTabItemWidget extends StatelessWidget {
  const HeaderTabItemWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.forgroundColor,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  final Color? forgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: typography.bodyText1.copyWith(
                color: isSelected ? colorPalette.accent4 : forgroundColor),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        if (isSelected)
          Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  color: colorPalette.accent4, shape: BoxShape.circle))
        else
          const SizedBox(
            height: 8,
            width: 8,
          )
      ],
    );
  }
}
