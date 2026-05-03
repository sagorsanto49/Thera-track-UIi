import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Headertext(
            title: 'Reset Password',
            subtitle: 'Enter a new password',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 30),

                const Texts(text: 'New Password'),
                const SizedBox(height: 10), // reduced spacing

                Xfield(
                  text: 'Enter password',
                  suffixIcons: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                  prefixIcons: const Icon(Icons.lock_outline_sharp),
                ),

                const SizedBox(height: 20),

                const Texts(text: 'Confirm Password'),
                const SizedBox(height: 10),

                Xfield(
                  text: 'Confirm password',
                  suffixIcons: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                  prefixIcons: const Icon(Icons.lock_outline_sharp),
                ),

                const SizedBox(height: 30),

                Primarybutten(
                  title: 'Reset Password',
                  onpress: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ))
                  },
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}