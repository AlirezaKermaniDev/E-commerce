import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/domain/entities/product_filters_entity/product_filters_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  static const String path = "/products";

  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductsBloc>()..add(const ProductsEvent.getProduts()),
      child: Scaffold(
        backgroundColor: colorPalette.primary,
        body: SingleChildScrollView(
            child: Column(
          children: [
            HeaderWidget(
              selectedIndex: 2,
              backgroundColor: colorPalette.primary,
            ),
            Divider(
              color: colorPalette.gray5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getIt<SizeConfig>().padding, vertical: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Performance Sneakers",
                    style: typography.h4Title,
                  ),
                  Text(
                    "24 items",
                    style: typography.bodyText1.copyWith(
                      color: colorPalette.gray1,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const SizedBox();
                }
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getIt<SizeConfig>().padding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FiltersWidget(),
                      const SizedBox(
                        width: 32,
                      ),
                      Expanded(
                        child: GridView.builder(
                          itemCount: state.products.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: .8,
                          ),
                          itemBuilder: ((context, index) {
                            return ProductsItemWidget(
                              item: state.products[index],
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        )),
      ),
    );
  }
}

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({
    super.key,
  });

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  late ProductsBloc bloc = context.read<ProductsBloc>();
  late ProductsState state = bloc.state;
  late ProductFilterEntity filters = state.filters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: colorPalette.primary,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: colorPalette.darkPrimary.withOpacity(.15),
                      blurRadius: 6,
                      offset: const Offset(0, 2))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(children: [
                FilterItemsWidget(
                  title: "Gender",
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: _genderExpandedWidget(context),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FilterItemsWidget(
                    title: "Size",
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: _sizesExpandedWidget(context),
                    )),
                const SizedBox(
                  height: 20,
                ),
                FilterItemsWidget(
                  title: "Color",
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: _colorsExpandedWidget(context),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FilterItemsWidget(
                  title: "Material",
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: FilterItemsButton(
                            title: "Suede",
                            isActive: _isMaterialActive(context, "Suede"),
                            onTap: (isActive) {
                              _onTapMaterial(isActive, "Suede");
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: FilterItemsButton(
                            title: "Leather",
                            isActive: _isMaterialActive(context, "Leather"),
                            onTap: (isActive) {
                              _onTapMaterial(isActive, "Leather");
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: FilterItemsButton(
                            title: "Fibre",
                            isActive: _isMaterialActive(context, "Fibre"),
                            onTap: (isActive) {
                              _onTapMaterial(isActive, "Fibre");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }

  Row _colorsExpandedWidget(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FilterItemsButton(
            title: "Green",
            color: 0xff315BFF,
            isActive: _isColorActive(context, 0xff315BFF),
            onTap: (isActive) {
              _onTapColor(isActive, 0xff315BFF);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButton(
            title: "Blue",
            color: 0xff02BE83,
            isActive: _isColorActive(context, 0xff02BE83),
            onTap: (isActive) {
              _onTapColor(isActive, 0xff02BE83);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButton(
            title: "Red",
            color: 0xff000000,
            isActive: _isColorActive(context, 0xffFF3C78),
            onTap: (isActive) {
              _onTapColor(isActive, 0xffFF3C78);
            },
          ),
        ),
      ],
    );
  }

  Column _sizesExpandedWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FilterItemsButton(
                title: "6",
                isActive: _isSizeActive(context, 6),
                onTap: (isActive) {
                  _onTapSize(isActive, 6);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButton(
                title: "7",
                isActive: _isSizeActive(context, 7),
                onTap: (isActive) {
                  _onTapSize(isActive, 7);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButton(
                title: "7.5",
                isActive: _isSizeActive(context, 7.5),
                onTap: (isActive) {
                  _onTapSize(isActive, 7.5);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButton(
                title: "9",
                isActive: _isSizeActive(context, 9),
                onTap: (isActive) {
                  _onTapSize(isActive, 9);
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: FilterItemsButton(
                title: "9.5",
                isActive: _isSizeActive(context, 9.5),
                onTap: (isActive) {
                  _onTapSize(isActive, 9.5);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButton(
                title: "10",
                isActive: _isSizeActive(context, 10),
                onTap: (isActive) {
                  _onTapSize(isActive, 10);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButton(
                title: "10.5",
                isActive: _isSizeActive(context, 10.5),
                onTap: (isActive) {
                  _onTapSize(isActive, 10.5);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _genderExpandedWidget(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FilterItemsButton(
            title: "Male",
            isActive: _isGenderActive(context, 0),
            onTap: (isActive) {
              _onTapGender(isActive, 0);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButton(
            title: "Female",
            isActive: _isGenderActive(context, 1),
            onTap: (isActive) {
              _onTapGender(isActive, 1);
            },
          ),
        ),
      ],
    );
  }

  void _onTapGender(bool isActive, int value) {
    var genderValue = filters.genders;
    if (genderValue == null) {
      filters = state.filters.copyWith(genders: [value]);
    } else {
      List<int> genders = [];
      genders.addAll(genderValue);
      if (!isActive) {
        genders.remove(value);
      } else {
        genders.add(value);
      }
      filters = state.filters.copyWith(genders: genders);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  void _onTapSize(bool isActive, double value) {
    var sizeValue = filters.availableSizes;
    if (sizeValue == null) {
      filters = state.filters.copyWith(availableSizes: [value]);
    } else {
      List<double> sizes = [];
      sizes.addAll(sizeValue);
      if (!isActive) {
        sizes.remove(value);
      } else {
        sizes.add(value);
      }
      filters = state.filters.copyWith(availableSizes: sizes);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  void _onTapColor(bool isActive, int value) {
    var colorsValue = filters.colors;
    if (colorsValue == null) {
      filters = state.filters.copyWith(colors: [value]);
    } else {
      List<int> colors = [];
      colors.addAll(colorsValue);
      if (!isActive) {
        colors.remove(value);
      } else {
        colors.add(value);
      }
      filters = state.filters.copyWith(colors: colors);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  void _onTapMaterial(bool isActive, String value) {
    var materialValue = filters.materials;
    if (materialValue == null) {
      filters = state.filters.copyWith(materials: [value]);
    } else {
      List<String> materials = [];
      materials.addAll(materialValue);
      if (!isActive) {
        materials.remove(value);
      } else {
        materials.add(value);
      }
      filters = state.filters.copyWith(materials: materials);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  bool _isGenderActive(BuildContext context, int value) {
    return context.read<ProductsBloc>().state.filters.genders != null &&
        context.read<ProductsBloc>().state.filters.genders!.contains(value);
  }

  bool _isSizeActive(BuildContext context, double value) {
    return context.read<ProductsBloc>().state.filters.availableSizes != null &&
        context
            .read<ProductsBloc>()
            .state
            .filters
            .availableSizes!
            .contains(value);
  }

  bool _isColorActive(BuildContext context, int value) {
    return context.read<ProductsBloc>().state.filters.colors != null &&
        context.read<ProductsBloc>().state.filters.colors!.contains(value);
  }

  bool _isMaterialActive(BuildContext context, String value) {
    return context.read<ProductsBloc>().state.filters.materials != null &&
        context.read<ProductsBloc>().state.filters.materials!.contains(value);
  }
}

class FilterItemsButton extends StatefulWidget {
  const FilterItemsButton({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
    this.color,
  });

  final String title;
  final bool isActive;
  final ValueChanged<bool> onTap;
  final int? color;

  @override
  State<FilterItemsButton> createState() => _FilterItemsButtonState();
}

class _FilterItemsButtonState extends State<FilterItemsButton> {
  bool _isHover = false;
  late bool _isActive = widget.isActive;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
        widget.onTap(_isActive);
      },
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: 40,
        decoration: BoxDecoration(
            color: _isActive ? colorPalette.accent4 : colorPalette.gray6,
            borderRadius: BorderRadius.circular(2),
            border: _isHover
                ? Border.all(color: colorPalette.accent4, width: 2)
                : null),
        child: Center(
          child: widget.color != null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(
                          widget.color!,
                        ),
                        borderRadius: BorderRadius.circular(2)),
                  ),
                )
              : Text(
                  widget.title,
                  style: typography.bodyText2.copyWith(
                    fontWeight: FontWeight.normal,
                    color: _isActive
                        ? colorPalette.primary
                        : colorPalette.darkPrimary,
                  ),
                ),
        ),
      ),
    );
  }
}

class FilterItemsWidget extends StatefulWidget {
  const FilterItemsWidget({
    super.key,
    required this.title,
    required this.child,
  });
  final String title;
  final Widget child;

  @override
  State<FilterItemsWidget> createState() => _FilterItemsWidgetState();
}

class _FilterItemsWidgetState extends State<FilterItemsWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300));

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      controller: ExpandableController()
        ..addListener(() {
          if (animationController.isCompleted) {
            animationController.reverse();
          } else {
            animationController.forward();
          }
        }),
      theme: const ExpandableThemeData(hasIcon: false),
      header: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: typography.bodyText2.copyWith(color: colorPalette.gray1),
          ),
          RotationTransition(
            turns:
                Tween<double>(begin: 0, end: .125).animate(animationController),
            child: Icon(
              Icons.add_rounded,
              color: colorPalette.gray1,
            ),
          )
        ],
      ),
      collapsed: const SizedBox(),
      expanded: widget.child,
    );
  }
}

class ProductsItemWidget extends StatelessWidget {
  const ProductsItemWidget({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorPalette.gray6,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        item.imageUrl ?? "",
                        fit: BoxFit.fitWidth,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.warning_rounded,
                            color: colorPalette.gray3,
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress?.cumulativeBytesLoaded ==
                              loadingProgress?.expectedTotalBytes) {
                            return child;
                          } else {
                            return CircularProgressIndicator.adaptive(
                              backgroundColor: colorPalette.accent4,
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title ?? "",
                  style: typography.h5Title.copyWith(fontSize: 18),
                ),
                Icon(
                  Icons.favorite_border,
                  color: colorPalette.accent4,
                )
              ],
            ),
            Text(
              item.category?.title ?? "",
              style: typography.bodyText2.copyWith(color: colorPalette.gray2),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "\$${item.price}",
              style: typography.bodyText1.copyWith(),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
