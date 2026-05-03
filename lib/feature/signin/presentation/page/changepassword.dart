import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/page/signin.dart';
import 'package:flutter/material.dart';

class Changepassword extends StatelessWidget {
  const Changepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2), // dim background
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 320,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white, // changed from amber
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Top handle
                  Container(
                    width: 50,
                    height: 5,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  // Circle icon
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.withOpacity(0.1),
                    ),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Headertext(
                    title: 'Password Changed!',
                    subtitle:
                    'Return To the login page to enter your\naccount with your new password',
                  ),

                  const SizedBox(height: 25),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Primarybutten(
                      title: 'back to sign in',
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}