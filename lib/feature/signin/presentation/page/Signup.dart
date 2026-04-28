import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
