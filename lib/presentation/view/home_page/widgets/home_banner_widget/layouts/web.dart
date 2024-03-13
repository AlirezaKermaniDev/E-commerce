part of '../home_banner_widget.dart';

class _HomeBannerWidgetWeb extends StatefulWidget {
  const _HomeBannerWidgetWeb({
    super.key,
  });

  @override
  State<_HomeBannerWidgetWeb> createState() => _HomeBannerWidgetWebState();
}

class _HomeBannerWidgetWebState extends State<_HomeBannerWidgetWeb> {
  final PageController _pageControlle = PageController();
  bool _isFirst = true;
  bool _isLast = false;
  final List<String> _shoes = [
    AssetHandler.shoe2,
    AssetHandler.shoe3,
    AssetHandler.shoe10,
    AssetHandler.shoe7,
    AssetHandler.shoe8,
    AssetHandler.shoe9,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.55.w(context),
      height: 0.6.h(context),
      child: Stack(
        children: [
          SizedBox(
            width: 0.53.w(context),
            height: 0.55.h(context),
            child: Stack(
              children: [
                _backgroundShapeWidget(),
                _bannerItemsPageBuilderWidget(),
              ],
            ),
          ),
          _changeImageArrowsWidget()
        ],
      ),
    );
  }

  WidgetAnimator _bannerItemsPageBuilderWidget() {
    return WidgetAnimator(
      incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
          delay: const Duration(milliseconds: 1000),
          blur: const Offset(20, 20)),
      child: PageView.builder(
          itemCount: _shoes.length,
          onPageChanged: _onPageChanged,
          controller: _pageControlle,
          itemBuilder: _bannerPageViewItemBuilder),
    );
  }

  WidgetAnimator _backgroundShapeWidget() {
    return WidgetAnimator(
      incomingEffect: WidgetTransitionEffects.incomingScaleDown(
          delay: const Duration(milliseconds: 500), blur: const Offset(20, 20)),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 0.32.w(context),
            width: 0.32.w(context),
            child: Center(child: SvgPicture.asset(AssetHandler.homeShape))),
      ),
    );
  }

  Widget _changeImageArrowsWidget() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(right: 0.34.w(context), top: 0.38.h(context) + .13.w(context)),
        child: SizedBox(
          height: 40,
          width: 120,
          child: Row(
            children: [
              ArrowButtonWidget(
                isDisable: _isFirst,
                onTap: _onTapBackArrow,
                iconData: Icons.arrow_back_rounded,
              ),
              const SizedBox(
                width: 16,
              ),
              ArrowButtonWidget(
                isDisable: _isLast,
                onTap: onTapForwardArrow,
                iconData: Icons.arrow_forward_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapForwardArrow() {
    _pageControlle.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void _onTapBackArrow() {
    _pageControlle.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  Widget _bannerPageViewItemBuilder(BuildContext context, int index) {
    return Center(
        child: WidgetAnimator(
      atRestEffect: WidgetRestingEffects.wave(),
      child: Padding(
        padding: EdgeInsets.only(bottom: index >= 2 ? 0 : 50, left: 30,top: 100),
        child: Transform.rotate(angle: -.72, child: Image.asset(_shoes[index])),
      ),
    ));
  }

  void _onPageChanged(page) {
    setState(() {
      _isFirst = page == 0;
      _isLast = page == _shoes.length - 1;
    });
  }
}
