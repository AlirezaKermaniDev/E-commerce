part of 'product_item_widget.dart';

void inTapItem(BuildContext context, String itemId) {
  context.go("${ProductDetailPage.path}/$itemId");
}
