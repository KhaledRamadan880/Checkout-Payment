import 'package:checkout_payment/core/imports/imports.dart';
import 'package:checkout_payment/features/checkout_payment/views/thank_you_view.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key,
  });

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  GlobalKey<FormState> creditCardKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 602.responsiveHeight(context),
      child: Column(
        children: [
          SizedBox(height: 34.responsiveHeight(context)),
          //! Card
          GestureDetector(
            onTap: () {
              showBackView = !showBackView;
              setState(() {});
            },
            child: CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: showBackView,
              isHolderNameVisible: true,
              onCreditCardWidgetChange: (value) {},
              height: 192.responsiveHeight(context),
              width: 328.responsiveWidth(context),
              cardBgColor: Theme.of(context).primaryColor,
              isChipVisible: false,
              padding: 0,
            ),
          ),
          //! Form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (model) {
              cardNumber = model.cardNumber;
              expiryDate = model.expiryDate;
              cardHolderName = model.cardHolderName;
              cvvCode = model.cvvCode;
              showBackView = model.isCvvFocused;
              setState(() {});
            },
            formKey: creditCardKey,
          ),
          const Spacer(),
          //* Pay Button
          CustomElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThankYoView(),
                ),
              );
            },
            title: AppStrings.pay,
          ),
        ],
      ),
    );
  }
}
