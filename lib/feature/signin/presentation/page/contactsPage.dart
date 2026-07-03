import 'package:doctor/feature/signin/presentation/page/horse.dart';
import 'package:flutter/material.dart';
import 'package:doctor/feature/signin/presentation/page/clientspage.dart';
// import 'package:doctor/feature/signin/presentation/page/horsepage.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> contacts = ["Clients", "Horse", "Dog"];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person_outline),
            title: Text(contacts[index]),
            onTap: () {
              if (contacts[index] == "Clients") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClientsPage(),
                  ),
                );
              }
               else if (contacts[index] == "Horse") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Horse(),
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
