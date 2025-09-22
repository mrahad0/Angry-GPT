import 'package:angrygpt/App%20Screen/homeScreen.dart';
import 'package:angrygpt/Login%20&%20Authentication/forgotPage.dart';
import 'package:angrygpt/Login%20&%20Authentication/signUpPage.dart';
import 'package:flutter/material.dart';

import '../Button/buttonStyle.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),

                //Logo
                Center(
                  child: Image.asset(
                    "assets/logo/Group 354.png",
                    height: 100,
                  ),
                ),

                const SizedBox(height: 40),

                // Email TextField
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/icons/sms.png",color: Colors.yellow[500],),
                    hintText: "Enter your email",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.yellow),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Password TextField
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/icons/lock.png",color: Colors.yellow[500],),
                    suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.yellow),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Forget password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPage()));
                    },
                    child: const Text(
                      "Forget password?",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text("or, continue with", style: TextStyle(color: Colors.white70)),

                const SizedBox(height: 20),

                // Social login buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    socialLoginButton("assets/icons/Google logo.png"),
                    socialLoginButton("assets/icons/facebook logo.png"),
                    socialLoginButton("assets/icons/apple logo.png"),
                  ],
                ),

                const SizedBox(height: 40),

                // Sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?", style: TextStyle(color: Colors.white70)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


