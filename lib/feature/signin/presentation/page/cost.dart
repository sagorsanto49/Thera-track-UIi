import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        title: Text(
          "Cost",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
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

            SizedBox(height: 25.h),

            /// Image
            ClipRRect(
              borderRadius: BorderRadius.circular(4.r),
              child: Image.network(
                "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d",
                height: 170.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 30.h),

            /// Email Box
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(4.r),
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
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  ),

                  SizedBox(height: 15.h),

                  Text(
                    "Data will be sent to the email above.",
                  ),

                  SizedBox(height: 20.h),

                  Center(
                    child: SizedBox(
                      width: 160.w,
                      height: 45.h,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.send),
                        label: Text("Send"),
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
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      
      child: Row(
        children: [
          SizedBox(
            width: 120.w,
            child: Text(title,style: TextStyle(fontSize: 1.7.sp)),),
          
          Text(":",style: TextStyle(fontSize: 1.7.sp)),
          SizedBox(width: 30.w),
          Expanded(
            child: Text(value,style: TextStyle(fontSize: 1.7.sp)),
          ),
        ],
      ),
    );
  }
}
