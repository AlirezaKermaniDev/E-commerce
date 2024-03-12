part of '../header_widget.dart';

class _HeaderWidgetTablet extends StatelessWidget {
  const _HeaderWidgetTablet(
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
              InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SizedBox(
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(
                      CustomIcons.menu,
                      color: forgroundColor,
                    )),
              ),
              SizedBox(
                  height: 70, width: 70, child: Image.asset(AssetHandler.logo)),
            ],
          ),
        ),
      ),
    );
  }
}
