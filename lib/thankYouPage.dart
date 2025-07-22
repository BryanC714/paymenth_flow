import 'package:flutter/material.dart';

class thankYouPage extends StatelessWidget {
  const thankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle_outline, color: Colors.green, size: 100),
              const SizedBox(height: 20),
              const Text("Thanks you for Buying", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("Your order will be shipped in 2-4 international days", textAlign: TextAlign.center),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, '/'),
                style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
                child: const Text("CONTINUE SHOPPING"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
