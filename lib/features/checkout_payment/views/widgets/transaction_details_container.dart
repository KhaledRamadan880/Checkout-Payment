import 'package:checkout_payment/core/imports/imports.dart';

class TransactionDetailsContainer extends StatelessWidget {
  const TransactionDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 350.responsiveWidth(context),
        height: 672.responsiveHeight(context),
        padding: EdgeInsets.symmetric(horizontal: 22.responsiveWidth(context)),
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(height: 66.responsiveHeight(context)),
            //! Title & Subtitle
            Text(
              AppStrings.thankYou,
              style: Styles.style25(context),
            ),
            SizedBox(height: 2.responsiveHeight(context)),
            Text(
              AppStrings.yourTransactionWasSuccessful,
              style: Styles.style20(context),
            ),
            SizedBox(height: 42.responsiveHeight(context)),
            //! Date
            TitleAndValue(
              title: AppStrings.date,
              value: "01/24/2023",
              bottomPadding: 20.responsiveHeight(context),
              isPrice: false,
            ),
            //! Date
            TitleAndValue(
              title: AppStrings.time,
              value: "10:15 AM",
              bottomPadding: 20.responsiveHeight(context),
              isPrice: false,
            ),
            //! To
            TitleAndValue(
              title: AppStrings.to,
              value: "Sam Louis",
              bottomPadding: 20.responsiveHeight(context),
              isPrice: false,
            ),
            SizedBox(height: 10.responsiveHeight(context)),
            //! Divider
            const CustomDivider(),
            SizedBox(height: 3.responsiveHeight(context)),
            //! Total
            const TotalPrice(
              title: AppStrings.total,
              value: 50.97,
            ),
            SizedBox(height: 20.responsiveHeight(context)),
            //! Card Details Container
            Container(
              height: 73.responsiveHeight(context),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 20.responsiveWidth(context),
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  //! Card Image
                  SvgPicture.asset(
                    Assets.imagesMasterCard,
                    height: 55.responsiveHeight(context),
                  ),
                  SizedBox(
                    width: 23.responsiveWidth(context),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //! Card number
                      Text(
                        AppStrings.creditCard,
                        style: Styles.style18(context),
                      ),
                      //! Card type
                      Text(
                        "Mastercard **78",
                        style: Styles.style16(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            //! Bottom Bar
            Row(
              children: [
                //! Bar Code
                SizedBox(
                  width: 142.responsiveWidth(context),
                  height: 71.responsiveHeight(context),
                  child: SvgPicture.asset(
                    Assets.imagesBarCode,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const Spacer(),
                //! Paid Conatainer
                Container(
                  width: 113.responsiveWidth(context),
                  height: 58.responsiveHeight(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.paid,
                      style: Styles.style24(context).copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.responsiveHeight(context)),
          ],
        ),
      ),
    );
  }
}
