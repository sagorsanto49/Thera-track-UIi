import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/yourdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceSetup extends StatelessWidget {
  const InvoiceSetup({super.key});

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
          'Invoice Setup',
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
              // LOGO
              Container(
                height: 90.h,
                width: 90.w,

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                      BorderRadius.circular(10.r),

                  border: Border.all(
                    color: Colors.blue.shade200,
                  ),
                ),

                child: Padding(
                  padding: EdgeInsets.all(8.r),

                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                  ),
                ),
              ),

              SizedBox(height: 10.h),

              // ADD LOGO BUTTON
              SizedBox(
                width: 120.w,

                child: OutlinedButton.icon(
                  onPressed: () {},

                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.grey.shade400,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.r),
                    ),
                  ),

                  icon: Icon(
                    Icons.image_outlined,
                    size: 18.r,
                    color: Colors.grey,
                  ),

                  label: Text(
                    "Add your logo",

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25.h),

              // INSTITUTION NAME
              Texts(text: 'Institution Name'),

              SizedBox(height: 10.h),

              Xfield(
                text: 'Inner Peace Therapy Institute',
              ),

              SizedBox(height: 20.h),

              // ADDRESS
              Text(
                'Address',

                style: TextStyle(fontSize: 1.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 5.h),

              Text(
                'Street',

                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.sp,
                ),
              ),

              SizedBox(height: 10.h),

              Xfield(text: '221B Baker Street'),

              SizedBox(height: 20.h),

              // CITY
              Text(
                'City',

                style: TextStyle(fontSize: 1.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 10.h),

              Xfield(text: 'London'),

              SizedBox(height: 20.h),

              // TOWN
              Text(
                'Town',

                style: TextStyle(fontSize: 1.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 10.h),

              Xfield(text: 'Westminster'),

              SizedBox(height: 20.h),

              // ZIP CODE
              Text(
                'Zip Code',

                style: TextStyle(fontSize: 1.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 10.h),

              Xfield(text: 'NW1 6XE'),

              SizedBox(height: 20.h),

              // PHONE
              Text(
                'Phone',

                style: TextStyle(fontSize: 1.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 10.h),

              Xfield(text: '+44 20 xxxx xxxx'),

              SizedBox(height: 20.h),

              // EMAIL
              Text(
                'Email Address',

                style: TextStyle(fontSize: 1.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 10.h),

              Xfield(
                text: 'innerpeacetherapy@gmail.com',
              ),

              SizedBox(height: 20.h),

              // WEBSITE
              Text(
                'Website',

                style: TextStyle(fontSize: 1.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 10.h),

              Xfield(
                text: 'innerpeacetherapy.com',
              ),

              SizedBox(height: 35.h),

              // SAVE BUTTON
              SizedBox(
                width: double.infinity,

                child: Primarybutten(
                  title: 'Save',
                  onpress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Yourdetails()));
                  },
                ),
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
