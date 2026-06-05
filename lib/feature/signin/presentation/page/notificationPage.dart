import 'package:doctor/feature/signin/presentation/page/notifications1.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "Just Now",
            blue: true,
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "2 hours ago",
            blue: true,
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "Just Now",
          ),
          notificationCard(
            title: "You have an appointments with (client’s name)",
            time: "date & time",
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "12 hours ago",
            blue: true,
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "1 day ago",
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "2 days ago",
            blue: true,
          ),

          const SizedBox(height: 15),

          // 🔵 Button at the end
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationPage1(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              "Go to Next Page",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget notificationCard({
    required String title,
    required String time,
    bool blue = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: blue ? Colors.blue.shade100 : Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            time,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}