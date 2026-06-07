import 'package:flutter/material.dart';

class EditHorsePage extends StatelessWidget {
  const EditHorsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Horse"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Boss",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "Age",
                hintText: "3 Years 2 Month",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "Breed",
                hintText: "Belgian Draft",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "Gender",
                hintText: "Male",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "Height",
                hintText: "68 Inches",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "Color",
                hintText: "Black",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Done"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}