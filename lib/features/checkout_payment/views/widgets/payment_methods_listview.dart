import 'package:checkout_payment/core/imports/imports.dart';
import 'package:checkout_payment/features/checkout_payment/views/widgets/payment_method_item.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({
    super.key,
  });

  static List<String> paymentMethodsImages = [
    Assets.imagesCreditCard,
    Assets.imagesPaypal
  ];

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.responsiveHeight(context),
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                selectedItemIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                image: PaymentMethodListView.paymentMethodsImages[index],
                isActive: selectedItemIndex == index ? true : false,
              ),
            );
          },
        ),
      ),
    );
  }
}
