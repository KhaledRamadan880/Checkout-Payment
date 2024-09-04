import 'package:checkout_payment/core/imports/imports.dart';

abstract class Styles {
  static TextStyle style25(context) {
    return TextStyle(
      fontSize: 25.responsiveText(context),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontFamily: 'Inter',
    );
  }

  static TextStyle style24(context) {
    return TextStyle(
      fontSize: 24.responsiveText(context),
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    );
  }

  static TextStyle style22(context) {
    return TextStyle(
      fontSize: 22.responsiveText(context),
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
    );
  }

  static TextStyle style20(context) {
    return TextStyle(
      fontSize: 20.responsiveText(context),
      color: AppColors.black.withOpacity(0.8),
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    );
  }

  static TextStyle style18(context) {
    return TextStyle(
      fontSize: 18.responsiveText(context),
      color: AppColors.black,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    );
  }

  static TextStyle style18SemiBold(context) {
    return TextStyle(
      fontSize: 18.responsiveText(context),
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    );
  }
}
