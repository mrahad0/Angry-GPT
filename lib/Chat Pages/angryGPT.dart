import 'package:flutter/material.dart';

class AngryGPTPage extends StatefulWidget {
  const AngryGPTPage({super.key});

  @override
  State<AngryGPTPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<AngryGPTPage> {
  String selectedAI = "Assistant";

  final Map<String, String> aiMessages = {
    "Assistant": "What can I help with?",
    "Angry GPT": "What do you want now?",
    "Mimi": "Hi sweetie! 💖 How’s your day?",
    "Lola": "Hey there! What’s up?",
  };

  final List<String> aiList = ["Angry GPT", "Lola", "Mimi", "Assistant"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Chat With AI",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20),

          // Popup Menu
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                selectedAI = value;
              });
            },
            color: const Color(0xFF2C2C2C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            itemBuilder: (context) =>
                aiList
                    .map(
                      (ai) =>
                      PopupMenuItem(
                        value: ai,
                        child: Row(
                          children: [
                            Text(
                              ai,
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            const Icon(
                                Icons.face, color: Colors.white70, size: 18),
                          ],
                        ),
                      ),
                )
                    .toList(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white54),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Chat With  ",
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Icon(Icons.face, color: Colors.white),
                  const Icon(Icons.arrow_drop_down, color: Colors.white),
                ],
              ),
            ),
          ),

          const Spacer(),

          // Center Dynamic Text
          Text(
            aiMessages[selectedAI] ?? "What can I help with?",
            style: TextStyle(
              color: Colors.yellow.shade600,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),

          const Spacer(),

          // Message Input Box
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Message with $selectedAI...",
                      hintStyle: const TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.yellow.shade600),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),

          // AI Quick Select Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: aiList.map((ai) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ChoiceChip(
                  label: Text(ai),
                  selected: selectedAI == ai,
                  onSelected: (value) {
                    if (value) {
                      setState(() {
                        selectedAI = ai;
                      });
                    }
                  },
                  backgroundColor: Colors.grey.shade700,
                  selectedColor: Colors.yellow.shade700,
                  labelStyle: TextStyle(
                    color: selectedAI == ai ? Colors.black : Colors.white,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}