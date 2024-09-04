import 'package:checkout_payment/core/imports/imports.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.width,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 320.responsiveWidth(context),
      child: Divider(
        color: AppColors.darkGrey,
        height: 34.responsiveHeight(context),
        thickness: 2.responsiveHeight(context),
      ),
    );
  }
}
