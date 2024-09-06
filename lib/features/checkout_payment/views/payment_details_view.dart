import 'package:checkout_payment/core/imports/imports.dart';
import 'package:checkout_payment/features/checkout_payment/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment/features/checkout_payment/views/widgets/payment_methods_listview.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: AppStrings.paymentDetails,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(Assets.imagesArrow),
        ),
      ),
      //! Body
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: 20.responsiveWidth(context),
        ),
        children: const [
          //* Payment Methods List View
          const PaymentMethodListView(),
          //* Credit Cards
          const CustomCreditCard(),
        ],
      ),
    );
  }
}
