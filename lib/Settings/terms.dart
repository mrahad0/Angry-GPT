import 'package:flutter/material.dart';

import '../Setting Content/terms_content.dart';


class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Terms of Services",
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
              Text("1. Acceptance of Terms", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 8),
              Text(TermsContent.acceptanceOfTerms, style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5)),

              SizedBox(height: 20),
              Text("2. User Responsibilities", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 8),
              Text(TermsContent.userResponsibilities, style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5)),

              SizedBox(height: 20),
              Text("3. Subscription & Payments", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 8),
              Text(TermsContent.subscriptionPayments, style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5)),
            ],
          ),
        ),
      ),
    );
  }
}