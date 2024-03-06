import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/featured_products_entity/featured_products_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/home_banner_widget/home_banner_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  static const String path = "/";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              selectedIndex: 0,
              backgroundColor: colorPalette.gray6,
            ),
            const LandingPageWidget(),
            const SizedBox(
              height: 120,
            ),
            const FeaturedProductsWidget(),
            const SizedBox(
              height: 140,
            ),
            const AccesoriesWidget(),
            const SizedBox(
              height: 100,
            ),
            const BestSellerWidget(),
            const SizedBox(
              height: 100,
            ),
            NewArrivalsWidget(),
            const SizedBox(
              height: 140,
            ),
            const WhyChooseOurShopWidget(),
            const SizedBox(
              height: 120,
            ),
            const ChooseCategoriesWidget(),
            const SizedBox(
              height: 120,
            ),
            const PopularBrandsWidget(),
            const SubscribeWidget(),
            const SizedBox(
              height: 120,
            ),
            const FooterWidget(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class SubscribeWidget extends StatelessWidget {
  const SubscribeWidget({super.key, this.fullWidth});

  final bool? fullWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (fullWidth == null || fullWidth == false)
          Container(
            height: 300,
            width: 1.w(context),
            color: colorPalette.gray6,
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: AnimatorWidget(
              withFadeTransition: true,
              slideTransition: Tween<Offset>(
                  begin: Offset(fullWidth == true ? -0.1 : -1, 0),
                  end: Offset.zero),
              child: Container(
                height: 580,
                width: fullWidth == true ? 1.w(context) : .8.w(context),
                decoration: BoxDecoration(
                  gradient: colorPalette.gradient1,
                  borderRadius: fullWidth == true
                      ? BorderRadius.zero
                      : const BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 60, top: 32, bottom: 60),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          AnimatorWidget(
                            withFadeTransition: true,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: colorPalette.gradient4),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .1), end: Offset.zero),
                              child: Text(
                                context
                                    .locale.subscribeNowToGetTheLatestUpdates,
                                style: typography.h2Title.copyWith(
                                  color: colorPalette.primary,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .1), end: Offset.zero),
                              child: Container(
                                height: 86,
                                width: 550,
                                decoration: BoxDecoration(
                                    color: colorPalette.primary,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    context.locale.enterYouEmail,
                                    style: typography.bodyText1
                                        .copyWith(color: colorPalette.gray2),
                                  ),
                                ),
                              ),
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .1), end: Offset.zero),
                              child: Container(
                                height: 86,
                                width: 550,
                                decoration: BoxDecoration(
                                    color: colorPalette.accent1,
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    context.locale.subscribe.toUpperCase(),
                                    style: typography.bodyText1
                                        .copyWith(color: colorPalette.primary),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: fullWidth == true ? 80 : 0),
                              child: AnimatorWidget(
                                withFadeTransition: true,
                                child: Container(
                                  height: 307,
                                  width: 307,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: colorPalette.gradient4),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 32, left: 100),
                              child: Transform.scale(
                                scale: fullWidth == true ? .9 : 1.2,
                                child: Transform.rotate(
                                    angle: 1,
                                    child: AnimatorWidget(
                                        withFadeTransition: true,
                                        rotateTrasition:
                                            Tween<double>(begin: -.08, end: 0),
                                        child:
                                            Image.asset(AssetHandler.shoe6))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90, right: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                socialMediaIconBuilder(CustomIcons.twiter),
                                const SizedBox(
                                  width: 10,
                                ),
                                socialMediaIconBuilder(CustomIcons.facebook),
                                const SizedBox(
                                  width: 10,
                                ),
                                socialMediaIconBuilder(CustomIcons.instagram),
                              ],
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget socialMediaIconBuilder(String iconPath) {
    return AnimatorWidget(
      withFadeTransition: true,
      slideTransition:
          Tween<Offset>(begin: const Offset(.3, 0), end: Offset.zero),
      child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: colorPalette.primary),
          child: Center(
              child: SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              iconPath,
              color: colorPalette.accent1,
            ),
          ))),
    );
  }
}

class PopularBrandsWidget extends StatelessWidget {
  const PopularBrandsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: colorPalette.gray6,
        width: 1.w(context),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .1), end: Offset.zero),
                      child: Text(
                        context.locale.popularBrands,
                        style: typography.h2Title.copyWith(
                          color: colorPalette.darkPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(-.6, 0), end: Offset.zero),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 20,
                        color: colorPalette.gray3,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    SizedBox(
                      width: .8.w(context),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            PapularBrandsItemWidget(
                              iconPath: CustomIcons.nike,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PapularBrandsItemWidget(
                              iconPath: CustomIcons.newBalance,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PapularBrandsItemWidget(
                              iconPath: CustomIcons.adidas,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PapularBrandsItemWidget(
                              iconPath: CustomIcons.puma,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(.6, 0), end: Offset.zero),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: colorPalette.gray3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
              ],
            ),
            Positioned(
              left: 0,
              top: -130,
              child: Container(
                height: 255,
                width: 255,
                decoration: BoxDecoration(
                    gradient: colorPalette.gradient3, shape: BoxShape.circle),
              ),
            )
          ],
        ));
  }
}

class PapularBrandsItemWidget extends StatefulWidget {
  const PapularBrandsItemWidget({
    super.key,
    required this.iconPath,
  });
  final String iconPath;

  @override
  State<PapularBrandsItemWidget> createState() =>
      _PapularBrandsItemWidgetState();
}

class _PapularBrandsItemWidgetState extends State<PapularBrandsItemWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final double itemWidth = (.8.w(context) - 60) / 4;

    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatorWidget(
        withFadeTransition: true,
        slideTransition:
            Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.ease,
          height: 200,
          width: (_isHover ? itemWidth + 100 : itemWidth),
          decoration: BoxDecoration(
            color: colorPalette.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: colorPalette.gray6),
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

class ChooseCategoriesWidget extends StatelessWidget {
  const ChooseCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: .35.w(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  withFadeTransition: true,
                  child: Text(
                    context.locale.chooseCategories,
                    style: typography.h2Title.copyWith(
                      color: colorPalette.darkPrimary,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  withFadeTransition: true,
                  child: Text(
                    context.locale.forExplosiveEventsSprintsUTo400Metres,
                    style: typography.bodyText1.copyWith(
                      color: colorPalette.gray1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Expanded(
                  child: CategoryItemWidget(
                mainColor: colorPalette.accent1,
                title: context.locale.sneakersCollection,
                productsCount: 120,
                shapePath: AssetHandler.shape6,
                imageWidget: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Transform.rotate(
                      angle: -.5,
                      child: Transform.scale(
                          scale: 1.1, child: Image.asset(AssetHandler.shoe3))),
                ),
              )),
              const SizedBox(
                width: 32,
              ),
              Expanded(
                  child: CategoryItemWidget(
                mainColor: colorPalette.accent3,
                title: context.locale.footballCollection,
                productsCount: 87,
                shapePath: AssetHandler.shape8,
                imageWidget: Padding(
                  padding: const EdgeInsets.only(top: 270, right: 50),
                  child: Transform.scale(
                      scale: 1.7, child: Image.asset(AssetHandler.ball)),
                ),
              )),
              const SizedBox(
                width: 32,
              ),
              Expanded(
                  child: CategoryItemWidget(
                mainColor: colorPalette.accent4,
                title: context.locale.volleyballCollection,
                productsCount: 68,
                shapePath: AssetHandler.shape7,
                imageWidget: Padding(
                  padding: const EdgeInsets.only(top: 270, right: 20),
                  child: Transform.scale(
                      scale: 1.3, child: Image.asset(AssetHandler.volley)),
                ),
              )),
              const SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryItemWidget extends StatefulWidget {
  const CategoryItemWidget({
    super.key,
    required this.title,
    required this.shapePath,
    required this.productsCount,
    required this.imageWidget,
    required this.mainColor,
  });

  final String title;
  final String shapePath;
  final int productsCount;
  final Widget imageWidget;
  final Color mainColor;

  @override
  State<CategoryItemWidget> createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<CategoryItemWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: SizedBox(
        height: 500,
        child: Stack(
          children: [
            AnimatorWidget(
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
              withFadeTransition: true,
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                    color: colorPalette.gray6,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AnimatorWidget(
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .2), end: Offset.zero),
                              withFadeTransition: true,
                              child: Text(
                                widget.title,
                                style: typography.h4Title.copyWith(
                                  color: widget.mainColor,
                                ),
                              ),
                            ),
                          ),
                          AnimatorWidget(
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              delay: const Duration(milliseconds: 50),
                              withFadeTransition: true,
                              child: SvgPicture.asset(widget.shapePath))
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatorWidget(
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .2), end: Offset.zero),
                        delay: const Duration(milliseconds: 100),
                        withFadeTransition: true,
                        child: Text(
                          "${widget.productsCount} ${context.locale.products}",
                          style: typography.bodyText1.copyWith(
                            color: colorPalette.gray1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatorWidget(
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .2), end: Offset.zero),
                        delay: const Duration(milliseconds: 200),
                        withFadeTransition: true,
                        child: Text(
                          context.locale.seeCollection,
                          style: typography.bodyText1.copyWith(
                              color: widget.mainColor,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AnimatorWidget(
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
              scaleTransition: Tween<double>(begin: .9, end: 1),
              delay: const Duration(milliseconds: 700),
              withFadeTransition: true,
              child: AnimatedScale(
                duration: const Duration(milliseconds: 200),
                scale: _isHover ? 1.1 : 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: widget.imageWidget,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WhyChooseOurShopWidget extends StatelessWidget {
  const WhyChooseOurShopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(-.1, 0), end: Offset.zero),
                  withFadeTransition: true,
                  child: Image.asset(AssetHandler.banner1))),
          SizedBox(
            width: getIt<SizeConfig>().padding,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatorWidget(
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
                withFadeTransition: true,
                child: Text(
                  context.locale.whyChooseOurShop,
                  style: typography.h3Title.copyWith(
                    color: colorPalette.darkPrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              AnimatorWidget(
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
                withFadeTransition: true,
                child: Text(
                  context.locale.forExplosiveEventsSprintsUTo400Metres,
                  style: typography.bodyText1.copyWith(
                    color: colorPalette.gray1,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: shoupBenefitsItemBuilder(
                          FontAwesome.car, context.locale.fastDelivery)),
                  Expanded(
                    child: shoupBenefitsItemBuilder(
                        FontAwesome.headphones, context.locale.greatSupport),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                      child: shoupBenefitsItemBuilder(
                          FontAwesome.wallet, context.locale.coolPrices)),
                  Expanded(
                    child: shoupBenefitsItemBuilder(
                        FontAwesome.thumbs_up, context.locale.highQuality),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget shoupBenefitsItemBuilder(IconData icon, String title) {
    return AnimatorWidget(
      slideTransition:
          Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
      withFadeTransition: true,
      child: Row(
        children: [
          Icon(
            icon,
            color: colorPalette.accent1,
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            title,
            style: typography.bodyText1.copyWith(
              color: colorPalette.darkPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class NewArrivalsWidget extends StatelessWidget {
  NewArrivalsWidget({
    super.key,
  });

  final ScrollController scrollController = ScrollController();

  final List<FeaturedProductsEntity> _featuredProductsEntities = [
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe1,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 1,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe2,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 2,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe3,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 3,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe6,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 4,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe5,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 1,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe2,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 2,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe3,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 3,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe6,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 4,
        price: 120.50),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450,
          width: 1.w(context),
          color: colorPalette.gray6,
        ),
        Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatorWidget(
                          withFadeTransition: true,
                          slideTransition: Tween<Offset>(
                              begin: const Offset(-.1, 0), end: Offset.zero),
                          child: Text(
                            context.locale.newArrivals,
                            style: typography.h2Title
                                .copyWith(color: colorPalette.darkPrimary),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        AnimatorWidget(
                          withFadeTransition: true,
                          slideTransition: Tween<Offset>(
                              begin: const Offset(-.1, 0), end: Offset.zero),
                          child: Text(
                            context.locale.enjoyTheNewProductsFromOurStore,
                            style: typography.bodyText2
                                .copyWith(color: colorPalette.gray1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: AnimatorWidget(
                      slideTransition: Tween<Offset>(
                          begin: const Offset(.1, 0), end: Offset.zero),
                      withFadeTransition: true,
                      child: ArrowTitleButtonWidget(
                        title: context.locale.viewAll,
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 620,
              width: 1.w(context),
              child: ScrollBarWidget(
                scrollController: scrollController,
                padding: EdgeInsets.only(
                  left: 0.35.w(context),
                  right: 0.35.w(context),
                ),
                child: ListView.builder(
                    itemCount: _featuredProductsEntities.length,
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                        left: 135,
                        right: getIt<SizeConfig>().padding,
                        bottom: 20),
                    itemBuilder: (context, index) {
                      final item = _featuredProductsEntities[index];
                      List<LinearGradient> gradients = [
                        colorPalette.gradient4,
                        colorPalette.gradient3,
                        colorPalette.gradient1,
                        colorPalette.gradient2,
                      ];
                      return _NewArrialsItemWidget(
                        gradients: gradients,
                        item: item,
                        index: index,
                      );
                    }),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class _NewArrialsItemWidget extends StatefulWidget {
  const _NewArrialsItemWidget(
      {super.key,
      required this.gradients,
      required this.item,
      required this.index});

  final List<LinearGradient> gradients;
  final FeaturedProductsEntity item;
  final int index;

  @override
  State<_NewArrialsItemWidget> createState() => _NewArrialsItemWidgetState();
}

class _NewArrialsItemWidgetState extends State<_NewArrialsItemWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: SizedBox(
        width: 300,
        child: Stack(children: [
          Align(
            alignment: Alignment.topRight,
            child: Column(
              children: [
                AnimatorWidget(
                  withFadeTransition: true,
                  delay: Duration(milliseconds: (widget.index * 100)),
                  scaleTransition: Tween<double>(
                    begin: .8,
                    end: 1,
                  ),
                  child: Container(
                    height: 360,
                    width: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: widget
                            .gradients[(widget.item.gradientType ?? 0) % 4]),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "0${widget.index + 1}",
                                  style: typography.h2Title
                                      .copyWith(color: colorPalette.primary),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 28,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: colorPalette.primary,
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Center(
                                    child: Icon(
                                      Icons.add_rounded,
                                      color: colorPalette.darkPrimary,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      AnimatorWidget(
                          withFadeTransition: true,
                          delay:
                              Duration(milliseconds: 50 + (widget.index * 100)),
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, -.1), end: Offset.zero),
                          child: const RateBarWidget()),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay:
                            Duration(milliseconds: 100 + (widget.index * 100)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, -.1), end: Offset.zero),
                        child: Text(
                          widget.item.title ?? "",
                          style: typography.bodyText1
                              .copyWith(color: colorPalette.darkPrimary),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay:
                            Duration(milliseconds: 150 + (widget.index * 100)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, -.1), end: Offset.zero),
                        child: Text(
                          "\$${widget.item.price}",
                          style: typography.h4Title
                              .copyWith(color: colorPalette.darkPrimary),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          AnimatedPadding(
            duration: const Duration(milliseconds: 100),
            padding: EdgeInsets.only(top: _isHover ? 80 : 110, right: 80),
            curve: Curves.easeIn,
            child: AnimatorWidget(
              withFadeTransition: true,
              delay: Duration(milliseconds: (widget.index * 100)),
              rotateTrasition: Tween<double>(begin: .06, end: 0),
              child: Transform.scale(
                scale: 1.8,
                child: Transform.rotate(
                    angle: -.5, child: Image.asset(widget.item.imageUrl ?? "")),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatorWidget(
                withFadeTransition: true,
                slideTransition: Tween<Offset>(
                    begin: const Offset(-.1, 0), end: Offset.zero),
                child: Text(
                  context.locale.bestSellerThisWeek,
                  style: typography.h2Title
                      .copyWith(color: colorPalette.darkPrimary),
                ),
              ),
              AnimatorWidget(
                slideTransition:
                    Tween<Offset>(begin: const Offset(.1, 0), end: Offset.zero),
                withFadeTransition: true,
                child: ArrowTitleButtonWidget(
                  title: context.locale.viewAll,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Stack(
          children: [
            Row(
              children: [
                AnimatorWidget(
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 200),
                  slideTransition: Tween<Offset>(
                      begin: Offset(context.isLtrLocale ? -.9 : .9, 0),
                      end: Offset.zero),
                  child: Container(
                    height: 460,
                    width: .3.w(context),
                    decoration: BoxDecoration(
                      gradient: colorPalette.gradient4,
                      borderRadius: BorderRadius.only(
                        topRight: context.isLtrLocale
                            ? const Radius.circular(30)
                            : Radius.zero,
                        bottomRight: context.isLtrLocale
                            ? const Radius.circular(30)
                            : Radius.zero,
                        topLeft: context.isLtrLocale
                            ? Radius.zero
                            : const Radius.circular(30),
                        bottomLeft: context.isLtrLocale
                            ? Radius.zero
                            : const Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 158, vertical: 20),
              child: SizedBox(
                width: 620,
                child: Transform.scale(
                    scale: 1.4,
                    child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(
                          context.isLtrLocale ? math.pi : 0,
                        ),
                        child: AnimatorWidget(
                            withFadeTransition: true,
                            slideTransition: Tween<Offset>(
                              begin: Offset(context.isLtrLocale ? -.9 : .9, 0),
                              end: Offset.zero,
                            ),
                            child: WidgetAnimator(
                                atRestEffect: WidgetRestingEffects.wave(),
                                child: Image.asset(AssetHandler.shoe1))))),
              ),
            ),
            Align(
              alignment: context.isLtrLocale
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: context.isLtrLocale ? 0 : .65.w(context),
                  left: context.isLtrLocale ? .65.w(context) : 0,
                ),
                child: SizedBox(
                  width: .19.w(context),
                  height: 460,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: const Duration(milliseconds: 300),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        child: Text(
                          "Adidas Falcon Shoes for women - 2021 Edition",
                          style: typography.h5Title
                              .copyWith(color: colorPalette.darkPrimary),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatorWidget(
                          withFadeTransition: true,
                          delay: const Duration(milliseconds: 350),
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .1), end: Offset.zero),
                          child: const RateBarWidget()),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: const Duration(milliseconds: 400),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        child: Text(
                          "\$120.50",
                          style: typography.h5Title
                              .copyWith(color: colorPalette.darkPrimary),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: const Duration(milliseconds: 350),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        child: ButtonWidget(
                          title: context.locale.shopNow,
                          color: colorPalette.accent1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class AccesoriesWidget extends StatelessWidget {
  const AccesoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      child: SizedBox(
        height: 450,
        width: 1.w(context),
        child: Row(
          children: [
            Expanded(
                child: Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(color: colorPalette.accent2),
                  child: Row(
                    children: [
                      Expanded(
                          child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 100, bottom: 30),
                              child: SvgPicture.asset(AssetHandler.shape5),
                            ),
                          ),
                          Center(
                            child: AnimatorWidget(
                                withFadeTransition: true,
                                delay: const Duration(milliseconds: 50),
                                scaleTransition:
                                    Tween<double>(begin: .9, end: 1),
                                child: Image.asset(AssetHandler.ball)),
                          ),
                        ],
                      )),
                      SizedBox(
                        width: 244,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 50),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.accesories,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.darkPrimary),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 100),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.football,
                                style: typography.h2Title
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 150),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.weReceiveNewSportwearEveryDay,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 200),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: ButtonWidget(
                                title: context.locale.shopNow,
                                color: colorPalette.darkPrimary,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(AssetHandler.shape3),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150, bottom: 50),
                    child: SvgPicture.asset(AssetHandler.shape1),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(color: colorPalette.darkPrimary),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: SvgPicture.asset(AssetHandler.shape5),
                              ),
                            ),
                            Center(
                                child: AnimatorWidget(
                                    withFadeTransition: true,
                                    delay: const Duration(milliseconds: 50),
                                    scaleTransition: Tween<double>(
                                      begin: .9,
                                      end: 1,
                                    ),
                                    child: Image.asset(AssetHandler.volley))),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 244,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 50),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.accesories,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.accent2),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 100),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.volleyball,
                                style: typography.h2Title
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 150),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.weReceiveNewSportwearEveryDay,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 200),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: ButtonWidget(
                                title: context.locale.shopNow,
                                color: colorPalette.accent2,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SvgPicture.asset(AssetHandler.shape4),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 130, bottom: 20),
                    child: SvgPicture.asset(AssetHandler.shape2),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class FeaturedProductsWidget extends StatefulWidget {
  const FeaturedProductsWidget({
    super.key,
  });

  @override
  State<FeaturedProductsWidget> createState() => _FeaturedProductsWidgetState();
}

class _FeaturedProductsWidgetState extends State<FeaturedProductsWidget> {
  final ScrollController scrollController = ScrollController();
  bool _isGrabingMouse = false;
  final List<FeaturedProductsEntity> _featuredProductsEntities = [
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe1,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 1,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe2,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 2,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe3,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 3,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe6,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 4,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe1,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 1,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe2,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 2,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe3,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 3,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe6,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 4,
        price: 120.50),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatorWidget(
                slideTransition: Tween<Offset>(
                    begin: const Offset(-.1, 0), end: Offset.zero),
                withFadeTransition: true,
                child: Text(
                  context.locale.featuredProducts,
                  style: typography.h2Title
                      .copyWith(color: colorPalette.darkPrimary),
                ),
              ),
              AnimatorWidget(
                slideTransition:
                    Tween<Offset>(begin: const Offset(.1, 0), end: Offset.zero),
                withFadeTransition: true,
                child: ArrowTitleButtonWidget(
                  title: context.locale.viewAll,
                  onTap: () {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          MouseRegion(
            cursor: _isGrabingMouse
                ? SystemMouseCursors.grabbing
                : SystemMouseCursors.grab,
            child: GestureDetector(
              onTapDown: (_) {
                setState(() {
                  _isGrabingMouse = true;
                });
              },
              onTapUp: (_) {
                setState(() {
                  _isGrabingMouse = false;
                });
              },
              onTapCancel: () {
                setState(() {
                  _isGrabingMouse = false;
                });
              },
              child: SizedBox(
                width: 1.w(context),
                height: 450,
                child: ScrollBarWidget(
                  scrollController: scrollController,
                  child: ListView.builder(
                      itemCount: _featuredProductsEntities.length,
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = _featuredProductsEntities[index];
                        List<LinearGradient> gradients = [
                          colorPalette.gradient4,
                          colorPalette.gradient2,
                          colorPalette.gradient3,
                          colorPalette.gradient1,
                        ];
                        return FeaturedProductsItemWidget(
                            gradients: gradients, item: item, index: index);
                      }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollBarWidget extends StatelessWidget {
  const ScrollBarWidget(
      {super.key,
      required this.scrollController,
      required this.child,
      this.padding});

  final ScrollController scrollController;
  final Widget child;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thickness: 4.5,
      controller: scrollController,
      thumbColor: colorPalette.accent2,
      trackColor: colorPalette.gray5,
      trackVisibility: true,
      thumbVisibility: true,
      trackBorderColor: Colors.transparent,
      radius: const Radius.circular(8),
      trackRadius: const Radius.circular(8),
      crossAxisMargin: 0,
      padding: padding ??
          EdgeInsets.only(
            left: 0.25.w(context),
            right: 0.25.w(context),
          ),
      child: child,
    );
  }
}

class FeaturedProductsItemWidget extends StatefulWidget {
  const FeaturedProductsItemWidget({
    super.key,
    required this.gradients,
    required this.item,
    required this.index,
  });

  final List<LinearGradient> gradients;
  final FeaturedProductsEntity item;
  final int index;

  @override
  State<FeaturedProductsItemWidget> createState() =>
      _FeaturedProductsItemWidgetState();
}

class _FeaturedProductsItemWidgetState
    extends State<FeaturedProductsItemWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: () {},
        onHover: (value) {
          setState(() {
            _isHover = value;
          });
        },
        child: SizedBox(
          width: (1.w(context) - (getIt<SizeConfig>().padding * 2) - 32) / 4,
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Center(
                    child: AnimatorWidget(
                      withFadeTransition: true,
                      scaleTransition: Tween<double>(begin: .9, end: 1),
                      delay: Duration(milliseconds: ((widget.index % 4) * 200)),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        height: _isHover ? 150 : 116,
                        width: _isHover ? 150 : 116,
                        decoration: BoxDecoration(
                            gradient:
                                widget.gradients[widget.item.gradientType! - 1],
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  Center(
                      child: AnimatorWidget(
                    withFadeTransition: true,
                    slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1), end: Offset.zero),
                    delay: Duration(milliseconds: ((widget.index % 4) * 100)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: SizedBox(
                          height: 240,
                          child: Image.asset(widget.item.imageUrl ?? "")),
                    ),
                  ))
                ],
              )),
              Expanded(
                  child: SizedBox(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        delay:
                            Duration(milliseconds: ((widget.index % 4) * 100)),
                        child: const RateBarWidget()),
                    const SizedBox(
                      height: 16,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .1), end: Offset.zero),
                      delay: Duration(milliseconds: ((widget.index % 4) * 100)),
                      child: Text(
                        widget.item.title ?? "",
                        style: typography.bodyText2,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .1), end: Offset.zero),
                      delay: Duration(milliseconds: ((widget.index % 4) * 100)),
                      child: Text(
                        "\$${widget.item.price}",
                        style: typography.h4Title,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class RateBarWidget extends StatelessWidget {
  const RateBarWidget({super.key, this.activeColor});
  final Color? activeColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: colorPalette.gray4,
        ),
      ],
    );
  }
}

class ArrowTitleButtonWidget extends StatefulWidget {
  const ArrowTitleButtonWidget(
      {super.key,
      required this.title,
      this.isForwardArrow = true,
      required this.onTap,
      this.color,
      this.iconSize,
      this.mainAxisAlignment,
      this.icon});
  final String title;
  final bool isForwardArrow;
  final VoidCallback onTap;
  final Color? color;
  final IconData? icon;
  final double? iconSize;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  State<ArrowTitleButtonWidget> createState() => _ArrowTitleButtonWidgetState();
}

class _ArrowTitleButtonWidgetState extends State<ArrowTitleButtonWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Ink(
        height: 45,
        child: Row(
          mainAxisAlignment:
              widget.mainAxisAlignment ?? MainAxisAlignment.start,
          children: [
            if (!widget.isForwardArrow)
              _arrowWidgetBuilder(
                  widget.icon ?? Icons.arrow_forward_ios_rounded,
                  widget.iconSize ?? 17),
            AnimatedPadding(
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeInOutBack,
              padding: EdgeInsets.symmetric(
                horizontal: _isHover ? 20 : 8,
              ),
              child: Text(
                widget.title,
                style: typography.bodyText1
                    .copyWith(color: widget.color ?? colorPalette.accent4),
              ),
            ),
            if (widget.isForwardArrow)
              _arrowWidgetBuilder(
                  widget.icon ?? Icons.arrow_forward_ios_rounded,
                  widget.iconSize ?? 17),
          ],
        ),
      ),
    );
  }

  Widget _arrowWidgetBuilder(IconData iconData, double iconSize) {
    return Padding(
      padding: EdgeInsets.only(bottom: iconSize <= 18 ? 2 : 0),
      child: Icon(iconData,
          size: iconSize, color: widget.color ?? colorPalette.accent4),
    );
  }
}

class LandingPageWidget extends StatelessWidget {
  const LandingPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorPalette.gray6,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: const HomePageTitleWidget(),
            ),
          ),
          Align(
              alignment: context.isLtrLocale
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: const HomeBannerWidget()),
        ],
      ),
    );
  }
}

class HomePageTitleWidget extends StatelessWidget {
  const HomePageTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.12.h(context)),
      child: SizedBox(
        height: 0.75.h(context),
        width: 0.9.w(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 0.5.w(context),
              child: TextAnimator(
                context.locale.getYourAwesomeSneakers,
                style: typography.heroTitle,
                initialDelay: const Duration(milliseconds: 1500),
                spaceDelay: Duration.zero,
                incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                    blur: const Offset(0, 20),
                    duration: const Duration(milliseconds: 170)),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 0.25.w(context),
              child: TextAnimator(
                context.locale.weOfferTheBestDealsInOurShop,
                style: typography.bodyText3.copyWith(color: colorPalette.gray1),
                spaceDelay: Duration.zero,
                initialDelay: const Duration(milliseconds: 1500),
                characterDelay: const Duration(milliseconds: 14),
                incomingEffect:
                    WidgetTransitionEffects.incomingOffsetThenScaleAndStep(
                        duration: const Duration(milliseconds: 130)),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                WidgetAnimator(
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromBottom(
                    delay: const Duration(milliseconds: 2700),
                    blur: const Offset(20, 0),
                  ),
                  child: ButtonWidget(
                    title: context.locale.shopNow,
                    color: colorPalette.accent4,
                  ),
                ),
                const SizedBox(
                  width: 64,
                ),
                WidgetAnimator(
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromRight(
                    delay: const Duration(milliseconds: 2900),
                    blur: const Offset(20, 0),
                  ),
                  child: Icon(
                    FontAwesome.heart,
                    color: colorPalette.accent4,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            const OffersWidget(),
          ],
        ),
      ),
    );
  }
}

class OffersWidget extends StatelessWidget {
  const OffersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
            delay: const Duration(milliseconds: 3100),
            blur: const Offset(20, 20),
          ),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: colorPalette.accent2, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: colorPalette.primary,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                context.locale.freeShipping,
                style: typography.bodyText2.copyWith(color: colorPalette.gray1),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
            delay: const Duration(milliseconds: 3300),
            blur: const Offset(20, 20),
          ),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: colorPalette.accent2, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: colorPalette.primary,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                context.locale.freeReturns,
                style: typography.bodyText2.copyWith(color: colorPalette.gray1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ButtonWidget extends StatefulWidget {
  const ButtonWidget(
      {super.key,
      required this.title,
      required this.color,
      this.height,
      this.shadowColor,
      this.width});

  final String title;
  final Color color;
  final Color? shadowColor;
  final double? width;
  final double? height;
  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeIn,
        width: widget.width ?? 180,
        height: widget.height ?? 46,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(4),
          boxShadow: _isHover
              ? [
                  BoxShadow(
                      color: widget.shadowColor ?? widget.color,
                      blurRadius: 8,
                      spreadRadius: -8,
                      offset: const Offset(0, 8))
                ]
              : [
                  BoxShadow(
                      color: widget.shadowColor ?? widget.color,
                      blurRadius: 19,
                      spreadRadius: -20,
                      offset: const Offset(0, 22))
                ],
        ),
        child: Center(
          child: Text(
            widget.title,
            style: typography.bodyText2.copyWith(color: colorPalette.primary),
          ),
        ),
      ),
    );
  }
}
