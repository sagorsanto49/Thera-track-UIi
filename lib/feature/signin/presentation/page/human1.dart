import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/home3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Human1 extends StatelessWidget {
  const Human1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Step @ 3',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .05),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 2.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20.h),

                Texts(text: 'Name'),
                SizedBox(height: 8.h),
                Xfield(text: 'Enter name'),

                SizedBox(height: 16.h),

                Texts(text: 'Address'),
                SizedBox(height: 8.h),
                Xfield(text: 'Enter address'),

                SizedBox(height: 16.h),

                Texts(text: 'City'),
                SizedBox(height: 8.h),
                Xfield(text: 'Enter city'),

                SizedBox(height: 16.h),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(text: 'State'),
                          SizedBox(height: 8.h),
                          Xfield(text: 'Enter state'),
                        ],
                      ),
                    ),

                    SizedBox(width: 16.w),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(text: 'Zip Code'),
                          SizedBox(height: 8.h),
                          Xfield(text: 'Enter zip code'),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                Texts(text: 'Phone Number'),
                SizedBox(height: 8.h),
                Xfield(text: 'Enter phone number'),

                SizedBox(height: 16.h),

                Texts(text: 'Email'),
                SizedBox(height: 8.h),
                Xfield(text: 'Enter email'),

                SizedBox(height: 16.h),

                Texts(text: 'Other Information'),
                SizedBox(height: 8.h),
                Xfield(text: 'Write something'),

                SizedBox(height: 30.h),

                SizedBox(
                  width: double.infinity,
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home3()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 1.6.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
