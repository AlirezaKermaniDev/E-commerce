part of '../select_delivery_method_widget.dart';

class _SelectDeliveryMethodWidgetWeb extends StatelessWidget {
  const _SelectDeliveryMethodWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _animatorWidgetBuilder(
          millisecondsDelay: 800,
          child: Text(
            context.locale.selectDeliveryMethod,
            style: typography.h5Title,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        _animatorWidgetBuilder(
          millisecondsDelay: 900,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: colorPalette.gray5,
                  width: 1.6,
                )),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio.adaptive(
                          value: true,
                          groupValue: true,
                          onChanged: (_) {},
                          activeColor: colorPalette.accent2,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        context.locale.standardDelivery,
                        style: typography.bodyText2
                            .copyWith(color: colorPalette.gray3),
                      )
                    ],
                  ),
                  Text(
                    context.locale.free,
                    style: typography.bodyText2,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
