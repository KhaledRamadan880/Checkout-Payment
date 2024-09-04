import 'package:checkout_payment/core/imports/imports.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.responsiveHeight(context)),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.style24(context),
          ),
          const Spacer(),
          Text(
            r"$" + value.toString(),
            style: Styles.style24(context),
          ),
        ],
      ),
    );
  }
}