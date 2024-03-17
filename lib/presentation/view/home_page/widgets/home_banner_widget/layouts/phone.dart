part of '../home_banner_widget.dart';

class _HomeBannerWidgetPhone extends StatefulWidget {
  const _HomeBannerWidgetPhone({
    super.key,
  });

  @override
  State<_HomeBannerWidgetPhone> createState() => _HomeBannerWidgetPhoneState();
}

class _HomeBannerWidgetPhoneState extends State<_HomeBannerWidgetPhone> {
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
      width: 1.w(context),
      height: 1.w(context),
      child: Stack(
        children: [
          _backgroundShapeWidget(),
          _bannerItemsPageBuilderWidget(),
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
        child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: SizedBox(
              height: 0.8.w(context),
              width: 0.8.w(context),
              child: SvgPicture.asset(AssetHandler.homeShape)),
        ),
      ),
    );
  }

  Widget _changeImageArrowsWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 40,
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        padding: const EdgeInsets.only(right: 30),
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
