import 'package:flutter/material.dart';

class AddClientPage extends StatelessWidget {
  final Map<String, String> client;

  const AddClientPage({
    super.key,
    this.client = const {},
  });

  Widget infoTile(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
        title: const Text("Clients"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              client["name"] ?? "",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            infoTile("Address", client["address"] ?? ""),
            infoTile("Postcode", client["postcode"] ?? ""),
            infoTile("Telephone", client["telephone"] ?? ""),
            infoTile("Mobile", client["mobile"] ?? ""),
            infoTile("Email", client["email"] ?? ""),
            infoTile("Other", client["other"] ?? ""),

            TextButton(
              onPressed: () {},
              child: const Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }
}