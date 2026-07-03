import 'package:doctor/feature/signin/presentation/page/horseedit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Horse2 extends StatelessWidget {
  const Horse2({super.key});

  Widget buildRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            value,
            style: TextStyle(fontSize: 1.6.sp),
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horse"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            buildRow("Name", "Boss"),
            buildRow("Age", "3 years 2 month"),
            buildRow("Foaling Year", "2021"),
            buildRow("Breed", "Belgian Draft"),
            buildRow("Gender", "Male"),
            buildRow("Height", "68 inches"),
            buildRow("Color", "Black"),
            buildRow("Other", "Empty"),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EditHorsePage(),
                  ),
                );
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
