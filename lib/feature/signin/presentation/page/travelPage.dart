import 'package:doctor/feature/signin/presentation/page/newdestination.dart';
import 'package:flutter/material.dart';

class CostPage extends StatelessWidget {
  const CostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Cost",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCostPage()));
              },
              child: const Text("Add New"),
            ),
          )
        ],
      ),
      
      
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  decoration: BoxDecoration(
                    color: Color(0xffeaf4ff),
                  ),
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("Distance"),
                    tableCell("Cost"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Start Place"),
                    tableCell("Destination"),
                    tableCell("50 Km"),
                    tableCell("120"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("100 Km"),
                    tableCell("200"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("80 Km"),
                    tableCell("300"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("60 Km"),
                    tableCell("150"),
                  ],
                ),
              ],
            ),

            const Spacer(),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 133, 126, 171),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "someone@gmail.com",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Data will be sent to the email above.",
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 130,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                      label: const Text("Send"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Custom
class tableCell extends StatelessWidget {
  final String text;

  const tableCell(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}