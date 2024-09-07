import 'package:checkout_payment/core/imports/imports.dart';

class CustomPopIcon extends StatelessWidget {
  const CustomPopIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SvgPicture.asset(
        Assets.imagesArrow,
      ),
    );
  }
}