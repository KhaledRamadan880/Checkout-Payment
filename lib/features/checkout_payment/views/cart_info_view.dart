import 'package:checkout_payment/core/imports/imports.dart';
import 'package:checkout_payment/features/checkout_payment/views/payment_details_view.dart';

class CartInfoView extends StatelessWidget {
  const CartInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: AppStrings.myCart),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.responsiveWidth(context)),
        child: Column(
          children: [
            //! Cart Image
            Expanded(child: Image.asset(Assets.imagesCart)),
            SizedBox(height: 25.responsiveHeight(context)),
            //! Cart Info
            const TitleAndValue(
              title: AppStrings.orderSubtotal,
              value: 42.97,
            ),
            const TitleAndValue(
              title: AppStrings.discount,
              value: 0,
            ),
            const TitleAndValue(
              title: AppStrings.shipping,
              value: 8,
            ),
            //! Divider
            const CustomDivider(),
            //! Total Price
            const TotalPrice(
              title: AppStrings.total,
              value: 50.97,
            ),
            SizedBox(height: 16.responsiveHeight(context)),
            //! Complete Payment Button
            CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const PaymentDetailsView();
                  }),
                );
              },
              title: AppStrings.completePayment,
            ),
            SizedBox(height: 46.responsiveHeight(context)),
          ],
        ),
      ),
    );
  }
}
