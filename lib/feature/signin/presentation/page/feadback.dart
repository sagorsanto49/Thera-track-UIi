import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.lightBlue.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Give Feedback",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text("What do you think of the app?"),

              const SizedBox(height: 20),

              /// Emoji Row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.sentiment_very_satisfied,
                      color: Colors.amber, size: 40),
                  Icon(Icons.sentiment_satisfied),
                  Icon(Icons.sentiment_neutral),
                  Icon(Icons.sentiment_dissatisfied),
                  Icon(Icons.sentiment_very_dissatisfied),
                ],
              ),

              const SizedBox(height: 20),

              /// Feedback Box
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Write your feedback...",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              /// Send Button
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  label: const Text("Send"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}