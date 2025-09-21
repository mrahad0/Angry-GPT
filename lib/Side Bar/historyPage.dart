import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children:[
                  Image.asset("assets/objects/rotate-left.png",color: Colors.white70,),
                  SizedBox(width: 8),
                  Text(
                    "History",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),
              const Divider(color: Colors.white24, thickness: 0.5),

              const SizedBox(height: 12),

              // List of chats
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Example number of chats
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          title: const Text(
                            "Chat name",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: PopupMenuButton<String>(
                            color: const Color(0xFF2A2A2A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            icon: const Icon(Icons.more_horiz,
                                color: Colors.white70),
                            onSelected: (value) {
                              if (value == "rename") {
                                // Rename logic
                              } else if (value == "delete") {
                                // Delete logic
                              }
                            },
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: "rename",
                                child: Row(
                                  children: [
                                    Image.asset("assets/objects/edit-2.png",color: Colors.white70,),
                                    SizedBox(width: 8),
                                    Text("Rename",
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: "delete",
                                child: Row(
                                  children: [
                                    Image.asset("assets/objects/trash.png",color: Colors.white70,),
                                    SizedBox(width: 8),
                                    Text("Delete",
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
