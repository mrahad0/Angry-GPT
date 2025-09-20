import 'package:angrygpt/ProFile/mainProfile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Chat cards list with PNG emoji + page reference
  final List<Map<String, dynamic>> chatCards = const [
    {
      "title": "Angry GPT",
      "description": "Blunt, sarcastic, and always in a mood. Dare to chat?",
      "tag": "Free",
      "emojiImage": "assets/objects/OBJECTS.png",
      "premium": false,
      "page": ""
    },
    {
      "title": "Visit Shop",
      "description": "Explore books, comics & music",
      "emojiImage": "assets/objects/book.png",
      "premium": false,
      "page": ""
    },
    {
      "title": "Mimi",
      "description": "Flirty, playful, and charming. Enter Mimi’s world.",
      "tag": "Premium",
      "emojiImage": "assets/objects/lovly1.png",
      "premium": true,
      "page": ""
    },
    {
      "title": "Lola",
      "description": "Witty, humorous, and fun. Have a chat and laugh!",
      "tag": "Premium",
      "emojiImage": "assets/objects/lovly.png",
      "premium": true,
      "page": ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Row(
                children: [
                  // CircleAvatar tappable
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> Mainprofile()),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/logo/Profile.png"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Hi, Susan",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  )
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                "Who do you want to chat with today?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 24),

              // Cards Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: chatCards.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final item = chatCards[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => item["page"]),
                      );
                    },
                    child: ChatCard(
                      title: item["title"],
                      description: item["description"],
                      tag: item["tag"],
                      premium: item["premium"] ?? false,
                      emojiImage: item["emojiImage"],
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              // Assistant Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF2C2C2C),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/objects/smile.png"),
                        SizedBox(width: 8),
                        Text(
                          "Personal Assistant",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFB2FF00),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Organized, helpful, and always on task. Your smart companion for staying productive and on schedule",
                      style: TextStyle(fontSize: 14, height: 1.3),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Premium Upsell
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF2C2C2C),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Unlock AI+ Features!",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    const FeatureRow(text: "Unlimited AI Conversations"),
                    const FeatureRow(text: "Exclusive AI Personas"),
                    const FeatureRow(text: "Early Access to New Features"),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFB2FF00),
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Go Premium →",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String title;
  final String description;
  final String? tag;
  final bool premium;
  final String? emoji;      // optional system emoji
  final String? emojiImage; // custom PNG emoji

  const ChatCard({
    super.key,
    required this.title,
    required this.description,
    this.tag,
    this.premium = false,
    this.emoji,
    this.emojiImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2C),
        borderRadius: BorderRadius.circular(16),
        border: premium
            ? Border.all(color: const Color(0xFFB2FF00), width: 1.2)
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (emoji != null)
                Text(emoji!, style: const TextStyle(fontSize: 28))
              else if (emojiImage != null)
                Image.asset(
                  emojiImage!,
                  width: 32,
                  height: 32,
                ),
              const Spacer(),
              if (tag != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: premium
                        ? const Color(0xFFB2FF00)
                        : Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    tag!,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: premium ? Colors.black : Colors.white,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: premium ? const Color(0xFFB2FF00) : Colors.white,
            ),
          ),
          const SizedBox(height: 6),
          Text(description, style: const TextStyle(fontSize: 13, height: 1.3)),
        ],
      ),
    );
  }
}

class FeatureRow extends StatelessWidget {
  final String text;
  const FeatureRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Icon(Icons.check_circle, size: 20, color: Color(0xFFB2FF00)),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
