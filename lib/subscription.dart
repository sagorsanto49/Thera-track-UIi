import 'package:doctor/subscription1.dart';
import 'package:flutter/material.dart';


class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Subscription",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // Card 1
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.workspace_premium,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Subscription1(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                      ),
                      child: const Text(
                        "Current Plan",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                const Text(
                  "01 Month",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),

                const Divider(),

                const Row(
                  children: [
                    Icon(Icons.check, color: Colors.blue, size: 18),
                    SizedBox(width: 5),
                    Text("Unlimited Chart"),
                  ],
                ),

                const SizedBox(height: 15),

                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "\$99.00",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " /Monthly",
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Card 2
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.workspace_premium,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "06 Month",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.blue, size: 18),
                    SizedBox(width: 5),
                    Text("Unlimited Chart"),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "\$99.00 /Monthly",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Card 3
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.workspace_premium,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "12 Month",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.blue, size: 18),
                    SizedBox(width: 5),
                    Text("Unlimited Chart"),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "\$99.00 /Monthly",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}