
import 'package:flutter/material.dart';

class paymentDetailsPage extends StatelessWidget {
  const paymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.credit_card, size: 100),
            const SizedBox(height: 16),
            const TextField(decoration: InputDecoration(labelText: "Cardholder Name")),
            const TextField(decoration: InputDecoration(labelText: "Card Number")),
            Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(labelText: "Expiry Date"))),
                const SizedBox(width: 16),
                Expanded(child: TextField(decoration: InputDecoration(labelText: "CVV"))),
              ],
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text("Save this card for future payments?")
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/thankyou'),
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
              child: const Text("CONFIRM PAYMENT"),
            ),
          ],
        ),
      ),
    );
  }
}
