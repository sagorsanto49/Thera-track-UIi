import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditHorsePage extends StatelessWidget {
  const EditHorsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Horse"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Boss",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 12.h),

            TextField(
              decoration: InputDecoration(
                labelText: "Age",
                hintText: "3 Years 2 Month",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 12.h),

            TextField(
              decoration: InputDecoration(
                labelText: "Breed",
                hintText: "Belgian Draft",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 12.h),

            TextField(
              decoration: InputDecoration(
                labelText: "Gender",
                hintText: "Male",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 12.h),

            TextField(
              decoration: InputDecoration(
                labelText: "Height",
                hintText: "68 Inches",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 12.h),

            TextField(
              decoration: InputDecoration(
                labelText: "Color",
                hintText: "Black",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20.h),

            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Done"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
