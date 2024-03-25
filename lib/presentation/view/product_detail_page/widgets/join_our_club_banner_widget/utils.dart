part of 'join_our_club_banner_widget.dart';

Positioned _shape4() {
  return Positioned(
    bottom: -30,
    right: -30,
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          gradient: colorPalette.gradient1, shape: BoxShape.circle),
    ),
  );
}

Positioned _shape3() {
  return Positioned(
    bottom: 60,
    right: 60,
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          gradient: colorPalette.gradient1, shape: BoxShape.circle),
    ),
  );
}

Positioned _shape2() {
  return Positioned(
    left: 60,
    top: 60,
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          gradient: colorPalette.gradient1, shape: BoxShape.circle),
    ),
  );
}

Positioned _shape1() {
  return Positioned(
    left: -30,
    top: -30,
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          gradient: colorPalette.gradient1, shape: BoxShape.circle),
    ),
  );
}
