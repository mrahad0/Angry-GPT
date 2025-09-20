import 'package:angrygpt/Login%20&%20Authentication/resetOTP.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back
          },
        ),
        title: Text("Forget Password", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),

            Text(
              "Forgot Password ?",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Text(
              "Please enter your email address to reset your password.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 30),

            // Email TextField
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.limeAccent,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(color: Colors.white54),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.limeAccent),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Send OTP Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetOTP()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.limeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Send OTP",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
