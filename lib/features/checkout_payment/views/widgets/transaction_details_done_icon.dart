import 'package:checkout_payment/core/imports/imports.dart';

class TransactionDetailsDoneIcon extends StatelessWidget {
  const TransactionDetailsDoneIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CircleAvatar(
        radius: 50.responsiveHeight(context),
        backgroundColor: AppColors.grey,
        child: CircleAvatar(
          radius: 40.responsiveHeight(context),
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.done,
            color: AppColors.white,
            size: 70.responsiveHeight(context),
          ),
        ),
      ),
    );
  }
}