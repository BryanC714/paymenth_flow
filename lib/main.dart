import 'package:flutter/material.dart';
import 'package:paymenth_flow/PaymentMethodPage.dart';
import 'package:paymenth_flow/paymentDetailsPage.dart';
import 'package:paymenth_flow/thankYouPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/',
      routes: {
        '/': (_) => const paymentMethodPage(),
        '/payment': (_) => const paymentDetailsPage(),
        '/thankyou': (_) => const thankYouPage(),
      },
    );
  }
}
