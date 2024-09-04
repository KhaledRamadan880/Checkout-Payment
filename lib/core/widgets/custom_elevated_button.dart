import 'package:checkout_payment/core/imports/imports.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        fixedSize: Size(
          350.responsiveWidth(context),
          73.responsiveHeight(context),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        title,
        style: Styles.style22(context),
      ),
    );
  }
}