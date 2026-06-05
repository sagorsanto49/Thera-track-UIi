import 'package:flutter/material.dart';

class NotificationPage1 extends StatelessWidget {
  const NotificationPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "title": "Nur’s appointment rescheduled",
        "time": "Just Now",
        "checked": false,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "2 hours ago",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "Just Now",
        "checked": false,
      },
      {
        "title": "You have an appointments with (client’s name)",
        "time": "date & time",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "12 hours ago",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "1 day ago",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "2 days ago",
        "checked": true,
      },
    ];

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.delete_outline,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(3),
                    color: item["checked"] as bool
                        ? Colors.blue.shade50
                        : Colors.transparent,
                  ),
                  child: item["checked"] as bool
                      ? const Icon(
                          Icons.check,
                          size: 15,
                          color: Colors.red,
                        )
                      : null,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["title"].toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        item["time"].toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}