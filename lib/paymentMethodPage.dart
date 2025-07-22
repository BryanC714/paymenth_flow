import 'package:flutter/material.dart';

class paymentMethodPage extends StatefulWidget {
  const paymentMethodPage({super.key});

  @override
  State<paymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<paymentMethodPage> {
  int selectedMethod = 0;

  final List<String> methods = [
    'Credit Card',
    'Internet Banking',
    'PayPal',
    'Bitcoin Wallet',
  ];

  final List<String> descriptions = [
    'Visa, MasterCard, UPI or more',
    'Pay via internet banking account',
    'Faster & safer way to send money',
    'Send and receive with your Bitcoin wallet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment method")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text("Select one of the payment methods", style: TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          ...List.generate(methods.length, (index) {
            return ListTile(
              leading: Radio(
                value: index,
                groupValue: selectedMethod,
                onChanged: (value) {
                  setState(() => selectedMethod = value!);
                },
              ),
              title: Text(methods[index]),
              subtitle: Text(descriptions[index]),
            );
          }),
          const Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/payment'),
            style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
            child: const Text("NEXT"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
