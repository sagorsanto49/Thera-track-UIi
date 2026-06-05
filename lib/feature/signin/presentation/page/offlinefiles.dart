import 'package:flutter/material.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/primarybutten.dart';

class Offlinefiles extends StatelessWidget {
  const Offlinefiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const BackButton(color: Colors.black),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 90,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            _infoBox("Name          :  Name Here"),
            const SizedBox(height: 5),

            _infoBox("Email         :  someone@gmail.com"),
            const SizedBox(height: 5),

            _infoBox("Mobile       :  Number here"),
            const SizedBox(height: 5),

            _infoBox("Address     :  Some where"),
            const SizedBox(height: 5),

            _infoBox("Date          :  January 5, 2025"),

            const SizedBox(height: 12),

            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/neck.jpg",
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.blue.shade100,
              child: const Texts(text: "Description"),
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: const Text(
                "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              color: Colors.blue.shade100,
              child: Column(
                children: const [
                  ListTile(
                    title: Text("01. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1),
                  ListTile(
                    title: Text("02. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1),
                  ListTile(
                    title: Text("03. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1),
                  ListTile(
                    title: Text("04. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            const Row(
              children: [
                Expanded(child: Text("Cryotherapy")),
                Text(":"),
                SizedBox(width: 20),
                Text("20\$"),
              ],
            ),

            const SizedBox(height: 10),

            const Row(
              children: [
                Expanded(child: Text("Massage Therapy")),
                Text(":"),
                SizedBox(width: 20),
                Text("30\$"),
              ],
            ),

            const SizedBox(height: 10),

            const Row(
              children: [
                Expanded(child: Text("Acupuncture")),
                Text(":"),
                SizedBox(width: 20),
                Text("25\$"),
              ],
            ),

            const SizedBox(height: 10),

            const Row(
              children: [
                Expanded(child: Text("Heat and Cold Therapy")),
                Text(":"),
                SizedBox(width: 20),
                Text("100\$"),
              ],
            ),

            const Divider(),

            const Row(
              children: [
                Expanded(child: Text("Full Cost")),
                Text(":"),
                SizedBox(width: 20),
                Text("175\$"),
              ],
            ),

            const SizedBox(height: 10),

            const Row(
              children: [
                Expanded(child: Text("Discount")),
                Text(":"),
                SizedBox(width: 20),
                Text("5\$"),
              ],
            ),

            const Divider(),

            const Row(
              children: [
                Expanded(
                  child: Text(
                    "Final Cost",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(":"),
                SizedBox(width: 20),
                Text(
                  "170\$",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Primarybutten(
                    title: 'Send',
                    onpress: () {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Primarybutten(
                    title: 'Sync',
                    onpress: () {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Primarybutten(
                    title: 'Print',
                    onpress: () {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Primarybutten(
                    title: 'Delete',
                    onpress: () {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

           
          ],
        ),
      ),
    );
  }

  Widget _infoBox(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blue),
      ),
      child: Text(text),
    );
  }
}