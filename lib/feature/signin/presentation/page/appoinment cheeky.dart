import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/page/calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';

class Appoinmentcheeky extends StatelessWidget {
  const Appoinmentcheeky({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: BackButton(color: Colors.black),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 90.h,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),

            Xfield(text: "Name          :  Name Here"),
            SizedBox(height: 5.h),

            Xfield(text: "Email         :  someone@gmail.com"),
            SizedBox(height: 5.h),

            Xfield(text: "Mobile       :  Number here"),
            SizedBox(height: 5.h),

            Xfield(text: "Address     :  Some where"),
            SizedBox(height: 5.h),

            Xfield(text: "Date          :  January 5, 2025"),

            SizedBox(height: 12.h),

            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                "assets/neck.jpg",
                height: 180.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 12.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.r),
              color: Colors.blue.shade100,
              child: Texts(
                text: "Description",
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.r),
              color: Colors.white,
              child: Text(
                "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(fontSize: 1.4.sp),
              ),
            ),

            SizedBox(height: 10.h),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text("01. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1.h),

                  ListTile(
                    title: Text("02. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1.h),

                  ListTile(
                    title: Text("03. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1.h),

                  ListTile(
                    title: Text("04. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 100.h,width: 400.w,color: Colors.lightBlue,
              child: Column(
                children: [
                  Texts(text: 'Next Appointments'),SizedBox(height: 10.h,), 
                  Text("42 jun 2000"),SizedBox(height: 10.h,),
                  Text('12.00 am'),SizedBox(height: 10.h,),
                ],
              ),
              ),

            

            SizedBox(height: 20.h),
            Primarybutten(title: 'Reschedule', onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Calender()));
            })
          ],
        ),
      ),
    );
  }
}
