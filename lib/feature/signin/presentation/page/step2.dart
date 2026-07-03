import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step2 extends StatelessWidget {
  const Step2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Step 2',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: EdgeInsets.all(9.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts(text: 'Name'),
              SizedBox(height: 10.h),
              Xfield(text: 'Enter name'),
              SizedBox(height: 12.h),

              Texts(text: 'Address'),
              SizedBox(height: 12.h),

              Texts(text: 'City'),
              SizedBox(height: 10.h),

              Xfield(text: 'Enter City'),
              SizedBox(height: 10.h),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(text: 'State'),
                        SizedBox(height: 10.h),
                        Xfield(text: 'Enter State'),
                      ],
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(text: 'State'),
                        SizedBox(height: 10.h),
                        Xfield(text: 'Enter State'),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 14.h),

              Texts(text: 'Phone Number'),
              SizedBox(height: 10.h),

              Xfield(text: 'Enter Phone Number'),
              SizedBox(height: 10.h),

              Texts(text: 'Email'),
              SizedBox(height: 10.h),

              Xfield(text: 'Aro7@gmail.com'),
              SizedBox(height: 10.h),

              Texts(text: 'Other'),
              SizedBox(height: 10.h),

              Xfield(text: ' <>'),
            ],
          ),
        ),
      ),
    );
  }
}
