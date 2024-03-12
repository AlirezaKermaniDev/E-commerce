import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ProductImageViewerWidget extends StatelessWidget {
  const ProductImageViewerWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
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
          return Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: colorPalette.accent4,
            ),
          );
        }
      },
    );
  }
}
