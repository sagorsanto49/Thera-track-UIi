import 'package:doctor/feature/signin/presentation/page/notifications1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: BackButton(color: Colors.black),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(10.r),
        children: [
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "Just Now",
            blue: true,
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "2 hours ago",
            blue: true,
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "Just Now",
          ),
          notificationCard(
            title: "You have an appointments with (client’s name)",
            time: "date & time",
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "12 hours ago",
            blue: true,
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "1 day ago",
          ),
          notificationCard(
            title: "Nur’s appointment rescheduled",
            time: "2 days ago",
            blue: true,
          ),

          SizedBox(height: 15.h),

          // 🔵 Button at the end
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationPage1(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              "Go to Next Page",
              style: TextStyle(fontSize: 1.6.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget notificationCard({
    required String title,
    required String time,
    bool blue = false,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 6.h),
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: blue ? Colors.blue.shade100 : Colors.transparent,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 1.8.sp,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            time,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
