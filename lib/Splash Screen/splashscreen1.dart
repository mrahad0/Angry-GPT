import 'package:angrygpt/Splash%20Screen/splashscreen2.dart';
import 'package:flutter/material.dart';

class Splashscreen1 extends StatefulWidget {
  const Splashscreen1({super.key});

  @override
  State<Splashscreen1> createState() => _Splashscreen1();
}

class _Splashscreen1 extends State<Splashscreen1> {
  @override
  void initState() {
    super.initState();

    // Wait 2 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Splashscreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            Image.asset(
              "assets/logo/Group 354.png",
              height: 120,
            ),
            const SizedBox(height: 10),
            const Text(
              "Angry GPT",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.limeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}