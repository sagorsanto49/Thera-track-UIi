import 'package:doctor/feature/signin/presentation/page/appoinment%20cheeky.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        leading: BackButton(color: Colors.black),
        title: Text(
          "Appointment",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.r),
        child: GridView.builder(
          itemCount: charts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                      builder: (context) => Appoinmentcheeky(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isRed ? Colors.red : Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8.r),
                  color: Colors.blue.shade200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chart["id"].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      Text(
                        chart["date"].toString(),
                        style: TextStyle(fontSize: 1.2.sp,
                          color: Colors.black54,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Nur",
                        style: TextStyle(fontSize: 2.4.sp,
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
