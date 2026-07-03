import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/edityourdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Yourdetails extends StatelessWidget {
  const Yourdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        centerTitle: true,

        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),

        title: Text(
          'Your Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.r),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Align(
                alignment: Alignment.centerRight,

                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (context) =>
                            EditYourDetails(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color(0xff1E88E5),

                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(6.r),
                    ),
                  ),

                  icon: Icon(
                    Icons.edit,
                    size: 15.r,
                    color: Colors.white,
                  ),

                  label: Text(
                    'Edit',

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              Text(
                'Name',

                style: TextStyle(fontSize: 1.3.sp,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 8.h),

              Xfield(text: 'Darlene Robertson'),

              SizedBox(height: 20.h),

              Text(
                'Town / City',

                style: TextStyle(fontSize: 1.3.sp,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 8.h),

              Xfield(text: 'St Albans'),

              SizedBox(height: 20.h),

              Text(
                'Postcode',

                style: TextStyle(fontSize: 1.3.sp,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 8.h),

              Xfield(text: '5656'),

              SizedBox(height: 20.h),

              Text(
                'Country',

                style: TextStyle(fontSize: 1.3.sp,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 8.h),

              Xfield(text: 'USA'),

              SizedBox(height: 20.h),

              Text(
                'Mobile',

                style: TextStyle(fontSize: 1.3.sp,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 8.h),

              Xfield(text: '01700000000'),

              SizedBox(height: 20.h),

              Text(
                'Main Email Address',

                style: TextStyle(fontSize: 1.3.sp,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 8.h),

              Xfield(text: 'someone@gmail.com'),

              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
