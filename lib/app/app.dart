import 'package:checkout_payment/core/theme/theme.dart';
import 'package:checkout_payment/features/checkout_payment/views/cart_info_view.dart';
import 'package:flutter/material.dart';

class CheckoutPaymentApp extends StatelessWidget {
  const CheckoutPaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const CartInfoView(),
    );
  }
}
