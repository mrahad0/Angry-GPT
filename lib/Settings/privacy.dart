import 'package:flutter/material.dart';
import '../Setting Content/privacy_content.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
          "Privacy Policy",
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              Text("1. Types of Data We Collect",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 8),
              Text(PrivacyContent.typesOfData,
                  style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5)),

              SizedBox(height: 20),

              // Section 2
              Text("2. Use of Your Personal Data",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 8),
              Text(PrivacyContent.useOfPersonalData,
                  style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5)),

              SizedBox(height: 20),

              // Section 3
              Text("3. Third-Party Services",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 8),
              Text(PrivacyContent.thirdPartyServices,
                  style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5)),
            ],
          ),
        ),
      ),
    );
  }
}
