import 'package:doctor/subscription1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Subscription",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.all(12.r),
        children: [
          // Card 1
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.workspace_premium,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Subscription1(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                      ),
                      child: Text(
                        "Current Plan",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15.h),

                Text(
                  "01 Month",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22.sp,
                  ),
                ),

                Divider(),

                Row(
                  children: [
                    Icon(Icons.check, color: Colors.blue, size: 18.r),
                    SizedBox(width: 5.w),
                    Text("Unlimited Chart"),
                  ],
                ),

                SizedBox(height: 15.h),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "\$99.00",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " /Monthly",
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20.h),

          // Card 2
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.workspace_premium,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  "06 Month",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22.sp,
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.blue, size: 18.r),
                    SizedBox(width: 5.w),
                    Text("Unlimited Chart"),
                  ],
                ),
                SizedBox(height: 15.h),
                Text(
                  "\$99.00 /Monthly",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20.h),

          // Card 3
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.workspace_premium,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  "12 Month",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22.sp,
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.blue, size: 18.r),
                    SizedBox(width: 5.w),
                    Text("Unlimited Chart"),
                  ],
                ),
                SizedBox(height: 15.h),
                Text(
                  "\$99.00 /Monthly",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
