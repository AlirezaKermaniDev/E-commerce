part of '../popular_brands_item_widget.dart';

class _PopularBrandsItemWidgetWeb extends StatefulWidget {
  const _PopularBrandsItemWidgetWeb({
    super.key,
    required this.iconPath,
  });
  final String iconPath;

  @override
  State<_PopularBrandsItemWidgetWeb> createState() =>
      _PapularBrandsItemWidgetWebState();
}

class _PapularBrandsItemWidgetWebState
    extends State<_PopularBrandsItemWidgetWeb> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: _inkWellHoverColor,
      onTap: () {},
      onHover: (value) => _onHover(value, setState),
      child: AnimatorWidget(
        withFadeTransition: true,
        slideTransition:
            Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.ease,
          height: 200,
          width: _backgroundWidth(context),
          decoration: BoxDecoration(
            color: colorPalette.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: colorPalette.gray6),
                color: _itemsBackgroundColor(),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(
                    widget.iconPath,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
