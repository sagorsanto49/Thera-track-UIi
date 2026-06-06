import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      "Clients",
      "Horse",
      "Dog",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: contacts.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: Text(contacts[index]),
            onTap: () {
              if (contacts[index] == "Clients") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>ContactsPage() ,
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}