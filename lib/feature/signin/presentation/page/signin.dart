import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/step%203.dart';
import 'package:flutter/material.dart';

import 'forgotpage.dart';
import 'homepage.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 228,),
            Headertext(title: 'Sign in to\nyour account',

                subtitle: 'Welcome back! Please enter your account'),


            SizedBox(height: 32),
            Text(
              'Your email',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 14),

            Xfield(text: 'Thomas Anree', prefixIcons: Icon(Icons.email_sharp),),

            SizedBox(height: 16),
            Text(
              'Password',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 14),
            Xfield(
              text: 'Enter password',
              prefixIcons: Icon(Icons.lock),
              suffixIcons: IconButton(onPressed:(){}, icon: Icon(Icons.visibility_off))
            ),
            SizedBox(height: 16,width: 50,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Forgotpage()));
                },
                child: Text('Forgot Password?')),
            SizedBox(height: 32),
            Primarybutten(
              title: 'Sign In',
              size: 16,
              bold: FontWeight.bold,
              onpress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },
            ),

            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?'),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Step3()));//Signup
                },

                    child: Text('Sign up',style: TextStyle(color: Colors.indigo),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
