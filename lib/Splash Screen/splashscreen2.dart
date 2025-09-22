import 'package:flutter/material.dart';

import '../Login & Authentication/loginPage.dart';

class Splashscreen2 extends StatelessWidget {
  const Splashscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),

              Expanded(child:
                 Center(
                  child: Image.asset(
                    "assets/logo/Illustration.png",

                    width: double.infinity,
                  ),
                ),
              ),


              const SizedBox(height: 30),

              // Title
              const Text(
                "Meet Your AI Companions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

              // Subtitle
              const Text(
                "From Angry GPT’s sarcasm to Lola’s humor\n"
                    "and Mimi’s charm — pick an AI that matches\n"
                    "your mood!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 30),

              // Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Loginpage()),
                    );

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.limeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_right_alt, color: Colors.black, size: 26),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}


