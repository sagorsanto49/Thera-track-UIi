import 'package:doctor/feature/signin/presentation/page/hume31.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';

import 'package:doctor/feature/signin/presentation/page/step4home.dart';
import 'package:doctor/feature/signin/presentation/page/step5.dart';
import 'package:doctor/feature/signin/presentation/page/texthome.dart';

class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Step 4',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headertext(
              title: 'Select the area of Concern',
              subtitle:
                  'Select one or more areas. If unsure select Other',
            ),

            SizedBox(height: 20.h),

            // Upload Section
            Container(
              height: 180.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Colors.black12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud_upload_outlined,
                      size: 40.r,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Click to browse or\n drag and drop your files',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 1.5.sp,
                        color: Colors.black54,
                        height: 1.5.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Expanded(child: Xfield(text: 'Joints')),
                SizedBox(width: 10.w),
                Expanded(child: Xfield(text: 'Back')),
                SizedBox(width: 10.w),
                Expanded(child: Xfield(text: 'Paws')),
              ],
            ),

            SizedBox(height: 12.h),

            Row(
              children: [
                Expanded(child: Xfield(text: 'Muscles')),
                SizedBox(width: 10.w),
                Expanded(child: Xfield(text: 'Neck')),
                SizedBox(width: 10.w),
                Expanded(child: Xfield(text: 'Ears')),
              ],
            ),

            SizedBox(height: 20.h),

            // Add Area
            Row(
              children: [
                Expanded(
                  child: Xfield(text: '------'),
                ),
                SizedBox(width: 10.w),
                SizedBox(
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {
        
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // Description Card
            _buildCard(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Texthome(),
                            ),
                          );
                        },
                        child: Texts(
                          text: 'Description',
                        ),
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Xfield(text: 'text'),
                ],
              ),
            ),

            SizedBox(height: 16.h),

            // Additional Notes Card
            _buildCard(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: 'Description'),
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Xfield(text: 'text'),
                ],
              ),
            ),

            SizedBox(height: 24.h),

            Primarybutten(
              title: 'Next',
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Step3Page(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildCard({
    required Widget child,
  }) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.03),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
