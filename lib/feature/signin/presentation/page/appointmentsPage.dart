import 'package:doctor/feature/signin/presentation/page/appoinment%20cheeky.dart';
import 'package:flutter/material.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      {"id": "#5", "date": "14 Jan, 2025", "red": false},
      {"id": "#6", "date": "14 Jan, 2025", "red": true},
      {"id": "#4", "date": "14 Jan, 2025", "red": true},
      {"id": "#3", "date": "14 Jan, 2025", "red": false},
      {"id": "#2", "date": "14 Jan, 2025", "red": false},
      {"id": "#1", "date": "14 Dec, 2024", "red": false},
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Appointment",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: charts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) {
            final chart = charts[index];
            final isRed = chart["red"] as bool;

            return InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Appoinmentcheeky(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isRed ? Colors.red : Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  color: Colors.blue.shade200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chart["id"].toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        chart["date"].toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "Nur",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}