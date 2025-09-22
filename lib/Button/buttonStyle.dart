// Button style for social login button
import 'package:flutter/material.dart';

Widget socialLoginButton(String imagePath) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.yellow),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Image.asset(imagePath, height: 30),
  );
}

// Custom widget for bullet point
class BulletText extends StatelessWidget {
  final String text;
  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("•  ",
            style: TextStyle(color: Colors.white70, fontSize: 16)),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 17,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
