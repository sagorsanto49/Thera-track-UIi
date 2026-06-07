import 'package:flutter/material.dart';

class Horse2 extends StatelessWidget {
  const Horse2({super.key});

  Widget buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
          const Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horse"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            buildRow("Name", "Boss"),
            buildRow("Age", "3 years 2 month"),
            buildRow("Foaling Year", "2021"),
            buildRow("Breed", "Belgian Draft"),
            buildRow("Gender", "Male"),
            buildRow("Height", "68 inches"),
            buildRow("Color", "Black"),
            buildRow("Other", "Empty"),

            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => const EditHorsePage(),
                //   ),
                // );
              },
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}