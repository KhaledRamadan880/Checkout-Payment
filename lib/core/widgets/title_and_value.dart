import 'package:checkout_payment/core/imports/imports.dart';

class TitleAndValue extends StatelessWidget {
  const TitleAndValue({
    super.key,
    required this.title,
    required this.value,
    this.bottomPadding,
    this.isPrice,
  });

  final String title;
  final dynamic value;
  final double? bottomPadding;
  final bool? isPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: bottomPadding ?? 3.responsiveHeight(context),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.style18(context),
          ),
          const Spacer(),
          Text(
            (isPrice == false ? "" : r"$") + value.toString(),
            style: Styles.style18(context),
          ),
        ],
      ),
    );
  }
}
