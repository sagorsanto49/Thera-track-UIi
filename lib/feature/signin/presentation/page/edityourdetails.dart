import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/treatment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditYourDetails extends StatelessWidget {
  const EditYourDetails({super.key});

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
                'country',

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

              SizedBox(
                width: double.infinity,

                child: Primarybutten(
                  title: 'Save',
                  onpress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TreatmentScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
