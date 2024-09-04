import 'package:checkout_payment/core/imports/imports.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: const Color(0xff34A853),
    appBarTheme: const AppBarTheme(
      color: AppColors.transparent,
      centerTitle: true,      
    ),
  );
}
