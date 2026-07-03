import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/step_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'forgotpage.dart';
import 'homepage.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 228.h),
            Headertext(
              title: 'Sign in to\nyour account',

              subtitle: 'Welcome back! Please enter your account',
            ),

            SizedBox(height: 32.h),
            Text(
              'Your email',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 14.h),

            Xfield(text: 'Thomas Anree', prefixIcons: Icon(Icons.email_sharp)),

            SizedBox(height: 16.h),
            Text(
              'Password',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 14.h),
            Xfield(
              text: 'Enter password',
              prefixIcons: Icon(Icons.lock),
              suffixIcons: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 16.h, width: 50.w),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Forgotpage()),
                );
              },
              child: Text('Forgot Password?'),
            ),
            SizedBox(height: 32.h),
            Primarybutten(
              title: 'Sign In',
              size: 16.sp,
              bold: FontWeight.bold,
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),

            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Step3()),
                    ); //Signup
                  },

                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.indigo),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
