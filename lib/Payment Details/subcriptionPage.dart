import 'package:flutter/material.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  bool isMonthlyExpanded = false;
  bool isYearlyExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Subscribe to Premium",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Upgrade to AI+ Premium",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFCCFF00), // neon green
              ),
            ),
            const SizedBox(height: 20),

            // Monthly Plan
            buildPlanCard(
              title: "\$9.99",
              subtitle: "/month",
              description: "Flexible billing, cancel anytime",
              expanded: isMonthlyExpanded,
              onTap: () {
                setState(() {
                  isMonthlyExpanded = !isMonthlyExpanded;
                  if (isMonthlyExpanded) isYearlyExpanded = false;
                });
              },
              details: const [
                "Unlimited AI Conversations",
                "Access to Exclusive AI Personas Mimi & Lola.",
                "Early Access to New Features",
                "Priority AI Processing",
                "Ad-Free Experience",
              ],
            ),
            const SizedBox(height: 16),

            buildPlanCard(
              title: "\$79.99",
              subtitle: "/yr",
              description: "Best deal for power users",
              expanded: isYearlyExpanded,
              onTap: () {
                setState(() {
                  isYearlyExpanded = !isYearlyExpanded;
                  if (isYearlyExpanded) isMonthlyExpanded = false;
                });
              },
              details: const [
                "1 Year Unlimited AI Conversations",
                "All Premium Features Included",
                "Save 30% Compared to Monthly",
                "Priority AI Processing",
                "Ad-Free Experience",
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlanCard({
    required String title,
    required String subtitle,
    required String description,
    required List<String> details,
    required bool expanded,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: expanded ? const Color(0xFF3A3A3A) : const Color(0xFF2C2C2C),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.yellow.shade700, width: 0.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Icon(
                  expanded
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  color: Colors.yellow,
                  size: 28,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: const TextStyle(color: Colors.grey),
            ),

            // Expanded Section
            if (expanded) ...[
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: details
                    .map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Row(
                    children: [
                      const Text(
                        "• ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          e,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
                    .toList(),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFCCFF00),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child: Text(
                    "Start This Plan",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
