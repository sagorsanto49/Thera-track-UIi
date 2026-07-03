import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        leading: BackButton(color: Colors.black),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 90.h,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),

            _infoBox("Name          :  Name Here"),
            SizedBox(height: 5.h),

            _infoBox("Email         :  someone@gmail.com"),
            SizedBox(height: 5.h),

            _infoBox("Mobile       :  Number here"),
            SizedBox(height: 5.h),

            _infoBox("Address     :  Some where"),
            SizedBox(height: 5.h),

            _infoBox("Date          :  January 5, 2025"),

            SizedBox(height: 12.h),

            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                "assets/neck.jpg",
                height: 180.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 12.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.r),
              color: Colors.blue.shade100,
              child: Texts(text: "Description"),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.r),
              color: Colors.white,
              child: Text(
                "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              ),
            ),

            SizedBox(height: 10.h),

            Container(
              width: double.infinity,
              color: Colors.blue.shade100,
              child: Column(
                children: [
                  ListTile(
                    title: Text("01. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1.h),
                  ListTile(
                    title: Text("02. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1.h),
                  ListTile(
                    title: Text("03. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1.h),
                  ListTile(
                    title: Text("04. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.h),

            Row(
              children: [
                Expanded(child: Text("Cryotherapy")),
                Text(":"),
                SizedBox(width: 20.w),
                Text("20\$"),
              ],
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                Expanded(child: Text("Massage Therapy")),
                Text(":"),
                SizedBox(width: 20.w),
                Text("30\$"),
              ],
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                Expanded(child: Text("Acupuncture")),
                Text(":"),
                SizedBox(width: 20.w),
                Text("25\$"),
              ],
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                Expanded(child: Text("Heat and Cold Therapy")),
                Text(":"),
                SizedBox(width: 20.w),
                Text("100\$"),
              ],
            ),

            Divider(),

            Row(
              children: [
                Expanded(child: Text("Full Cost")),
                Text(":"),
                SizedBox(width: 20.w),
                Text("175\$"),
              ],
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                Expanded(child: Text("Discount")),
                Text(":"),
                SizedBox(width: 20.w),
                Text("5\$"),
              ],
            ),

            Divider(),

            Row(
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
                SizedBox(width: 20.w),
                Text(
                  "170\$",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Expanded(
                  child: Primarybutten(
                    title: 'Send',
                    onpress: () {},
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Primarybutten(
                    title: 'Sync',
                    onpress: () {},
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                Expanded(
                  child: Primarybutten(
                    title: 'Print',
                    onpress: () {},
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Primarybutten(
                    title: 'Delete',
                    onpress: () {},
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

           
          ],
        ),
      ),
    );
  }

  Widget _infoBox(String text) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blue),
      ),
      child: Text(text),
    );
  }
}
