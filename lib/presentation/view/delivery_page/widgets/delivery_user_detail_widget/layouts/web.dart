part of '../delivery_user_detail_widget.dart';

class _DeliveryUserDetailWidgetWeb extends StatelessWidget {
  const _DeliveryUserDetailWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: colorPalette.gray5,
            width: 1.6,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        child: Column(
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 200),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.locale.email,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray3),
                  ),
                  Text(
                    context.locale.change,
                    style: typography.bodyText2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 300),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Divider(
                color: colorPalette.gray5,
                thickness: 1.6,
                height: 3,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 400),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.locale.name,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray3),
                  ),
                  Text(
                    context.locale.change,
                    style: typography.bodyText2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 500),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Divider(
                color: colorPalette.gray5,
                thickness: 1.6,
                height: 3,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 600),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${context.locale.delivery} ${context.locale.address}",
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray3),
                  ),
                  Text(
                    context.locale.change,
                    style: typography.bodyText2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
