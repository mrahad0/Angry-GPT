import 'package:angrygpt/Login%20&%20Authentication/loginPage.dart';
import 'package:flutter/material.dart';

class EmailVerify extends StatelessWidget {
  const EmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Verify Email", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            //Logo
            Center(
              child: Image.asset(
                'assets/logo/Group 354.png',
                height: 80,
              ),
            ),

            const SizedBox(height: 40),

            // OTP Input
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Container(
                  width: 50,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.limeAccent),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    '1', //dummy txt code
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 30),

            // Verify Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                //back to loging page
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.limeAccent,
                minimumSize: Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Verify',
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            // Resend Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t get the code? ",
                  style: TextStyle(color: Colors.white54),
                ),
                GestureDetector(
                  onTap: () {
                    // Resend logic
                  },
                  child: Text(
                    "Resend",
                    style: TextStyle(
                      color: Colors.limeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
