import 'package:checkout_payment/core/imports/imports.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem(
      {super.key, required this.image, required this.isActive});

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103.responsiveWidth(context),
      height: 62.responsiveHeight(context),
      margin: EdgeInsets.symmetric(horizontal: 10.responsiveWidth(context)),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isActive ? Theme.of(context).primaryColor : AppColors.darkGrey,
          width: 1.5,
        ),
        boxShadow: isActive
            ? <BoxShadow>[
                BoxShadow(
                  blurRadius: 4,
                  color: Theme.of(context).primaryColor,
                ),
              ]
            : [],
      ),
      child: Center(
          child: SvgPicture.asset(
        image,
        height: 30.responsiveHeight(context),
        fit: BoxFit.scaleDown,
      )),
    );
  }
}
