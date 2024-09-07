import 'package:checkout_payment/core/imports/imports.dart';
import 'package:checkout_payment/core/widgets/custom_dashed_divider.dart';
import 'package:checkout_payment/core/widgets/custom_pop_icon.dart';
import 'package:checkout_payment/features/checkout_payment/views/widgets/transaction_details_container.dart';
import 'package:checkout_payment/features/checkout_payment/views/widgets/transaction_details_done_icon.dart';

class ThankYoView extends StatelessWidget {
  const ThankYoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 60.responsiveHeight(context),
          horizontal: 20.responsiveWidth(context),
        ),
        child: SizedBox(
          height: 722.responsiveHeight(context),
          width: 350.responsiveWidth(context),
          child: const Stack(
            children: [
              //! Pop Button
              CustomPopIcon(),
              //! Transaction Details Container
              TransactionDetailsContainer(),
              //! Done Icon
              TransactionDetailsDoneIcon(),
              //! Dashed Divider
              DashedDivider(),
            ],
          ),
        ),
      ),
    );
  }
}



