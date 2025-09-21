import 'package:angrygpt/Settings/privacy.dart';
import 'package:angrygpt/Settings/terms.dart';
import 'package:angrygpt/Side%20Bar/historyPage.dart';
import 'package:angrygpt/Side%20Bar/sideBar2.dart';
import 'package:flutter/material.dart';

import '../ProFile/mainProfile.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1E1E1E), // match sidebar dark color
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // New Chat
            ListTile(
              leading: Image.asset("assets/objects/edit.png",color: Colors.white70,),
              title: const Text("New Chat", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),

            // History
            ListTile(
              leading: Image.asset("assets/objects/rotate-left.png",color: Colors.white70,),
              title: const Text("History", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryPage()));
              },
            ),

            const Divider(color: Colors.white24, thickness: 0.5),

            // Terms
            ListTile(
              leading: Image.asset("assets/objects/info-circle.png",color: Colors.white70,),
              title: const Text("Terms", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsPage()));
              },
            ),

            // Privacy
            ListTile(
              leading: Image.asset("assets/objects/security-safe.png",color: Colors.white70,),
              title: const Text("Privacy", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicyPage()));
              },
            ),

            // Settings
            ListTile(
              leading: Image.asset("assets/objects/setting-2.png",color: Colors.white70,),
              title: const Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SideBar2()));
              },
            ),

            const Spacer(),

            // Profile
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Mainprofile()),);
                     },
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/logo/Profile (1).png"), // replace with user image
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Susan Flores",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
