import 'package:flutter/material.dart';

class Cost extends StatelessWidget {
  const Cost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Cost",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            /// Cost Info
            Container(
              
              child: Column(
                children: [
                  buildItem("Departure", "Starting place name"),
                  buildItem("Destination", "place name"),
                  buildItem("Distance", "00 Km"),
                  buildItem("Food", "00\$"),
                  buildItem("Gas", "00\$"),
                  buildItem("Other", "00\$"),
                ],
              ),
            ),

            const SizedBox(height: 25),

            /// Image
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d",
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 30),

            /// Email Box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "someone@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Data will be sent to the email above.",
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: SizedBox(
                      width: 160,
                      height: 45,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.send),
                        label: const Text("Send"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(String title, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(title,style: TextStyle(fontSize: 17)),),
          
          const Text(":",style: TextStyle(fontSize: 17)),
          const SizedBox(width: 30),
          Expanded(
            child: Text(value,style: TextStyle(fontSize: 17)),
          ),
        ],
      ),
    );
  }
}