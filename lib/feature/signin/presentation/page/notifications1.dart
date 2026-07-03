import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage1 extends StatelessWidget {
  const NotificationPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "title": "Nur’s appointment rescheduled",
        "time": "Just Now",
        "checked": false,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "2 hours ago",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "Just Now",
        "checked": false,
      },
      {
        "title": "You have an appointments with (client’s name)",
        "time": "date & time",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "12 hours ago",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "1 day ago",
        "checked": true,
      },
      {
        "title": "Nur’s appointment rescheduled",
        "time": "2 days ago",
        "checked": true,
      },
    ];

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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: Icon(
              Icons.delete_outline,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(15.r),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];

          return Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(3.r),
                    color: item["checked"] as bool
                        ? Colors.blue.shade50
                        : Colors.transparent,
                  ),
                  child: item["checked"] as bool
                      ? Icon(
                          Icons.check,
                          size: 15.r,
                          color: Colors.red,
                        )
                      : null,
                ),

                SizedBox(width: 10.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["title"].toString(),
                        style: TextStyle(fontSize: 1.6.sp,
                          color: Colors.black87,
                        ),
                      ),

                      SizedBox(height: 4.h),

                      Text(
                        item["time"].toString(),
                        style: TextStyle(fontSize: 1.2.sp,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
