import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Headertext(
            title: 'Sign up to your account',
            subtitle: 'Welcome back! Please Enter your \ndetails.',
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts(text: 'Name'),
                SizedBox(height: 14),
                Xfield(text: 'Thomas Anree', prefixIcons: Icon(Icons.face)),
                SizedBox(height: 16),

                Texts(text: 'Your email'),
                SizedBox(height: 14),
                Xfield(
                  text: 'aro7@gmail.com',
                  prefixIcons: Icon(Icons.email_sharp),
                ),
                SizedBox(height: 16),

                Texts(text: 'Phone Number'),
                SizedBox(height: 14),
                Xfield(
                  text: 'Enter Phone Number',
                  prefixIcons: Icon(Icons.flag),
                ),
                SizedBox(height: 16),

                Texts(text: 'Password'),
                SizedBox(height: 14),
                Xfield(
                  text: 'Enter Password',
                  prefixIcons: Icon(Icons.lock_clock_sharp),
                  suffixIcons: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 16),

                Texts(text: 'Confirm Password'),
                SizedBox(height: 14),
                Xfield(
                  text: 'Confirm Password',
                  prefixIcons: Icon(Icons.lock_person_outlined),
                  suffixIcons: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 16),

                Texts(
                  text:
                      'By creating an account ,I accept the Terms &\nCondition & Privacy Policy',
                ),
                SizedBox(height: 16),
                Primarybutten(
                  title: 'Sign Up',
                  size: 15.sp,
                  bold: FontWeight.bold,
                  onpress: () {},
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Texts(text: 'Already Have an Account?'),
                    InkWell(
                      onTap: () {},

                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
