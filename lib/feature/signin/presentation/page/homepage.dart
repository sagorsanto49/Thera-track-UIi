import 'package:doctor/core/widget/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, bottom: 30),
            width: double.infinity,
            decoration:  BoxDecoration(
              color: Color(0xFF1E88E5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),

            ),
            child: Row(
              children: [
                CircleAvatar(
                  child:Icon(Icons.person,color: Colors.grey,),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Good Evening",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(height: 4),
                      Texts(text: 'Setup Your Account',color: Colors.white,),

                    ],
                  ),
                ),
                const Icon(Icons.menu, color: Colors.white)

              ],
            ),

          ),
          Container(


          )
        ],


      ),

    );
  }
}
