import 'package:angrygpt/Settings/aboutUs.dart';
import 'package:angrygpt/Settings/terms.dart';
import 'package:flutter/material.dart';

import '../Settings/privacy.dart';

class SideBar2 extends StatelessWidget {
  const SideBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color(0xFF1E1E1E), // match sidebar dark color
    child: SafeArea(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(height: 20),
      // Terms
      ListTile(
        leading: Image.asset("assets/objects/info-circle.png",color: Colors.white70,),
        title: const Text("Terms of Services", style: TextStyle(color: Colors.white)),
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsPage()));
        },
      ),

      // Privacy
      ListTile(
        leading: Image.asset("assets/objects/security-safe.png",color: Colors.white70,),
        title: const Text("Privacy Policy", style: TextStyle(color: Colors.white)),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicyPage()));
        },
         ),

      //About Us
      ListTile(
        leading: Image.asset("assets/objects/shield-question.png",color: Colors.white70,),
        title: const Text("About Us", style: TextStyle(color: Colors.white)),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsPage()));
        },
      ),
        ]  //children
      )
    )
    );
  }
}
