import 'package:angrygpt/App%20Screen/homeScreen.dart';
import 'package:angrygpt/Payment%20Details/paymentPage.dart';
import 'package:angrygpt/ProFile/profileInfo.dart';
import 'package:angrygpt/Side%20Bar/sideBar2.dart';
import 'package:flutter/material.dart';

import '../Setting Content/log_Out_Content.dart';

class Mainprofile extends StatelessWidget {
  const Mainprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Profile Image
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/logo/Profile (1).png"), // Replace with your image
          ),
          const SizedBox(height: 10),
          const Text(
            "Susan Flores",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),

          // Menu Items
          ListTile(
            leading: Image.asset("assets/icons/userpro.png",color: Colors.white,),
            title: const Text("Profile Information"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profileinfo()));
            },
          ),
          ListTile(
            leading: Image.asset("assets/icons/wallet-2.png",color: Colors.white,),
            title: const Text("Payment"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
            },
          ),
          ListTile(
            leading: Image.asset("assets/icons/setting-2.png",color: Colors.white,),
            title: const Text("Settings"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SideBar2()));
            },
          ),

          // Logout
          ListTile(
            leading: Image.asset("assets/icons/Logout.png",color: Colors.red,),
            title: const Text(
              "Logout",
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
                showLogoutBottomSheet(context);
                },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
