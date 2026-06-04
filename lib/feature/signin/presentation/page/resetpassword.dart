import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/signin.dart';
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
                    showModalBottomSheet(context: context, builder: (context){
                      return SizedBox(
                        height: 423,width: 440,
                        child:
                        Center(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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



                              const SizedBox(height: 20),

                              Column(
                              children: [
                                Texts(text: 'Password Changed!'),
                                SizedBox(height: 20,),
                                Text( 'Return To the login page to enter your\naccount with your new password',),

                              ],
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
                        )
                        ,);
                    });
                  },
                ),
              ],
            ),
          )

        ],
      ),
    );
  }

//   Widget nam extends class  extends StatelessWidget {
//   const ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//   return Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Column(
//   mainAxisAlignment: MainAxisAlignment.end,
//   children: [
//   Container(
//   height: 320,
//   width: double.infinity,
//   decoration: const BoxDecoration(
//   color: Colors.white, // changed from amber
//   borderRadius: BorderRadius.only(
//   topLeft: Radius.circular(25),
//   topRight: Radius.circular(25),
//   ),
//   ),
//   child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//   // Top handle
//   Container(
//   width: 50,
//   height: 5,
//   margin: const EdgeInsets.only(bottom: 20),
//   decoration: BoxDecoration(
//   color: Colors.blue,
//   borderRadius: BorderRadius.circular(10),
//   ),
//   ),
//
// // Circle icon
//   Container(
//   height: 90,
//   width: 90,
//   decoration: BoxDecoration(
//   shape: BoxShape.circle,
//   color: Colors.blue.withOpacity(0.1),
//   ),
//   child: Center(
//   child: Container(
//   height: 60,
//   width: 60,
//   decoration: const BoxDecoration(
//   shape: BoxShape.circle,
//   color: Colors.blue,
//   ),
//   child: const Icon(
//   Icons.check,
//   color: Colors.white,
//   size: 30,
//   ),
//   ),
//   ),
//   ),
//
//   const SizedBox(height: 20),
//
//   Headertext(
//   title: 'Password Changed!',
//   subtitle:
//   'Return To the login page to enter your\naccount with your new password',
//   ),
//
//   const SizedBox(height: 25),
//
//   Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 20),
//   child: Primarybutten(
//   title: 'back to sign in',
//   onpress: () {
//   Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
//   },
//   ),
//   ),
//   ],
//   ),
//   ),
//   ],
//   ),
//   ),;
//   }
//   }


}