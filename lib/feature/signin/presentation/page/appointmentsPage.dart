import 'package:doctor/feature/signin/presentation/page/cheekychariting.dart';
import 'package:flutter/material.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final charts = [
      {"id": "#5", "date": "14 jan, 2025", "price": "150 \$", "red": false},
      {"id": "#6", "date": "14 jan, 2025", "price": "150 \$", "red": true},
      {"id": "#4", "date": "14 jan, 2025", "price": "150 \$", "red": true},
      {"id": "#3", "date": "14 jan, 2025", "price": "150 \$", "red": false},
      {"id": "#2", "date": "14 jan, 2025", "price": "150 \$", "red": false},
      {"id": "#1", "date": "14 Dec, 2024", "price": "150 \$", "red": false},
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Chart Archive",
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
                // 👉 শুধু প্রথম item click করলে navigate করবে
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChartDetailsPage(),
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
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
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
                            const SizedBox(height: 6),
                            const Text(
                              "Nur",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.centerLeft,
                        color: Colors.blue.shade100,
                        child: Text(
                          chart["price"].toString(),
                          style: TextStyle(
                            color: isRed ? Colors.red : Colors.black87,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}