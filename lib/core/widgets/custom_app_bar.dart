import 'package:checkout_payment/core/imports/imports.dart';

AppBar customAppBar(BuildContext context,
    {required String title, Widget? leading}) {
  return AppBar(
    title: Text(
      title,
      style: Styles.style25(context),
    ),
    leading: leading ?? Container(),
  );
}
