import 'package:checkout_payment/core/imports/imports.dart';

class DashedDivider extends StatelessWidget {
  const DashedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 120.responsiveHeight(context),
      left: -25.responsiveWidth(context),
      right: -25.responsiveWidth(context),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 25.responsiveHeight(context),
          ),
          const Spacer(),
          CustomDivider(width: 290.responsiveWidth(context)),
          const Spacer(),
          CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 25.responsiveHeight(context),
          ),
        ],
      ),
    );
  }
}
