import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/page/cheekychariting.dart';
import 'package:doctor/feature/signin/presentation/page/offlinefiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfflineFilesPage extends StatelessWidget {
  const OfflineFilesPage({super.key});

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
        leading: BackButton(color: Colors.black),
        title: Text(
          "Off Lines File",
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
                      builder: (context) => ChartDetailsPage(),
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
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
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
                            SizedBox(height: 6.h),
                            Text(
                              "Nur",
                              style: TextStyle(fontSize: 2.4.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        alignment: Alignment.centerLeft,
                        color: Colors.blue.shade100,
                        child: Text(
                          chart["price"].toString(),
                          style: TextStyle(
                            color: isRed ? Colors.red : Colors.black87,
                            fontSize: 24.sp,
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

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.r),
        child: Primarybutten(
          title: "Sync",
          onpress: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Offlinefiles()));
          },
        ),
      ),
    );
  }
}
