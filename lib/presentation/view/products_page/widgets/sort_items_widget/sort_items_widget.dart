import 'package:ecommerce_app/domain/entities/prducts_sort.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortItemsWidget extends StatelessWidget {
  const SortItemsWidget({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
  });
  final String title;
  final ProductSort value;
  final ProductSort groupValue;

  bool isActive() {
    return value == groupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorPalette.primary,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {
          context
              .read<ProductsBloc>()
              .add(ProductsEvent.changeSorting(newSorting: value));
        },
        hoverColor: colorPalette.gray6,
        borderRadius: BorderRadius.circular(8),
        child: Ink(
          height: 55,
          decoration: BoxDecoration(
            color: colorPalette.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: typography.bodyText2.copyWith(
                      color: isActive()
                          ? colorPalette.accent1
                          : colorPalette.gray2),
                ),
                if (isActive())
                  Icon(
                    Icons.check_rounded,
                    color: colorPalette.gray3,
                    size: 20,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
