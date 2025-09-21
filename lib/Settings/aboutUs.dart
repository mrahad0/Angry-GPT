import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "About Us",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Yellow Highlight Title
              Text(
                "About Angry GPT",
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),

              SizedBox(height: 16),

              // Mission Statement
              Text(
                "Mission Statement",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "At Angry GPT, we believe in creating engaging, AI-powered conversations that are fun, interactive, and intelligent",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              // Why We Built This
              Text(
                "Why We Built This",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),

              // Bullet points
              BulletText(
                text:
                "We wanted to design an AI chat experience that adapts to different personalities, making every conversation unique.",
              ),
              SizedBox(height: 8),
              BulletText(
                text:
                "Whether you want sarcasm from Angry GPT, humor from Lola, or charm from Mimi, our AI adapts to your mood",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Custom widget for bullet point
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
