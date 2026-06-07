import 'package:doctor/feature/signin/presentation/page/clientsdetailspage.dart';
import 'package:flutter/material.dart';

class Horse extends StatelessWidget {
  const Horse({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> clients = [
      "Christopher Rogers",
      "Joshua Walker",
      "Richard Turner",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Clients"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Clients",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // ✅ Button now
                ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // ✅ button color
    foregroundColor: Colors.white, // text color
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddClientPage(),
      ),
    );
  },
  child: const Text("Add Client"),
),
              ],
            ),

            const SizedBox(height: 10),

            const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: clients.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(clients[index]),
                    trailing:
                        const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}