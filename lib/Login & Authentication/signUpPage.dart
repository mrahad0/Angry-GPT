import 'package:angrygpt/Login%20&%20Authentication/emailVerify.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Logo
              Center(
                child: Image.asset(
                  "assets/logo/Group 354.png", // replace with your logo file
                  height: 100,
                ),
              ),

              const SizedBox(height: 40),

              // Name
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/icons/user.png",color: Colors.yellow[500],),
                  hintText: "Enter your name",
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.limeAccent),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Email
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/icons/sms.png",color: Colors.yellow[500],),
                  hintText: "Enter your email",
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.limeAccent),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password
              TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/icons/lock.png",color: Colors.yellow[500],),
                  suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
                  hintText: "Enter your password",
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.limeAccent),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Confirm Password
              TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/icons/lock.png",color: Colors.yellow[500],),
                  suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
                  hintText: "Re-enter your password",
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.limeAccent),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Sign Up Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVerify()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.limeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Already have account? Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.white70),
                  ),
                  GestureDetector(
                    onTap: (){Navigator.push(context,
                       MaterialPageRoute(builder: (context) => const Loginpage()),);
                                       },
                      child:const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.limeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
