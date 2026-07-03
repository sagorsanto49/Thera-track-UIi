import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Container(
          padding: EdgeInsets.all(16.r),
          color: Colors.lightBlue.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Give Feedback",
                style: TextStyle(fontSize: 2.4.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10.h),

              Text("What do you think of the app?"),

              SizedBox(height: 20.h),

              /// Emoji Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.sentiment_very_satisfied,
                      color: Colors.amber, size: 40.r),
                  Icon(Icons.sentiment_satisfied),
                  Icon(Icons.sentiment_neutral),
                  Icon(Icons.sentiment_dissatisfied),
                  Icon(Icons.sentiment_very_dissatisfied),
                ],
              ),

              SizedBox(height: 20.h),

              /// Feedback Box
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Write your feedback...",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20.h),

              /// Send Button
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  label: Text("Send"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
