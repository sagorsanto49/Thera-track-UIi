import 'package:doctor/feature/signin/presentation/page/home5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step3Page extends StatelessWidget {
  const Step3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          "Step 3",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select the Area of Concern",
              style: TextStyle(fontSize: 1.6.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "Select one or more areas. If unsure select Other.",
              style: TextStyle(fontSize: 1.1.sp,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 15.h),

            // IMAGE
            Center(
              child: Column(
                children: [
                  Container(
                    width: 145.w,
                    height: 130.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/body.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 25.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3399FF),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Change Image",
                        style: TextStyle(fontSize: 1.0.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                areaButton("Head"),
                SizedBox(width: 5.w),
                selectedAreaButton("Neck"),
                SizedBox(width: 5.w),
                selectedAreaButton("Back"),
              ],
            ),

            SizedBox(height: 8.h),

            Row(
              children: [
                areaButton("Shoulders"),
                SizedBox(width: 5.w),
                areaButton("Buttocks"),
                SizedBox(width: 5.w),
                areaButton("Thighs"),
              ],
            ),

            SizedBox(height: 8.h),

            Row(
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                  child: SizedBox(
                    height: 35.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3399FF),
                      ),
                      onPressed: () {},
                      child: Text("Add"),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            // DESCRIPTION
            buildCard(
              title: "Description",
              icon: Icons.check,
              child: Text(
                "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(fontSize: 1.2.sp,
                  height: 1.5.h,
                ),
              ),
            ),

            SizedBox(height: 15.h),

            // ADD POINT
            buildCard(
              title: "Add point",
              icon: Icons.add_box_outlined,
              child: Column(
                children: [
                  pointTile("01. Text"),
                  pointTile("02. Text"),
                  pointTile("03. Text"),
                  pointTile("04. Text"),
                ],
              ),
            ),

            SizedBox(height: 18.h),

            SizedBox(
              width: double.infinity,
              height: 42.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff3399FF),
                ),
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home5()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 1.5.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildCard({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffA9D1F5),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            color: Color(0xffD8ECFF),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  icon,
                  size: 18.r,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.r),
            child: child,
          ),
        ],
      ),
    );
  }

  static Widget pointTile(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffA9D1F5),
        ),
        color: Color(0xffF7FBFF),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 1.2.sp),
          ),
          Icon(
            Icons.cancel_outlined,
            size: 16.r,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  static Widget areaButton(String text) {
    return Expanded(
      child: Container(
        height: 38.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11.sp,
          ),
        ),
      ),
    );
  }

  static Widget selectedAreaButton(String text) {
    return Expanded(
      child: Container(
        height: 38.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff3399FF),
          borderRadius: BorderRadius.circular(3.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.sp,
          ),
        ),
      ),
    );
  }
}
