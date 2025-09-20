import 'package:angrygpt/Login%20&%20Authentication/loginPage.dart';
import 'package:angrygpt/Login%20&%20Authentication/resetPass.dart';
import 'package:flutter/material.dart';

class ResetOTP extends StatelessWidget {
  const ResetOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // This navigates back
          },
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("OTP Verification", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 200,),
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
                    '1', // Dummy code, make this dynamic for user input
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPass()));
                //verification logic here
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
