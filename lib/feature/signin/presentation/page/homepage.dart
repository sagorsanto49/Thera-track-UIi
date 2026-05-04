import 'package:doctor/core/widget/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    List <String> ttext = [
      'Creat New Chat',
      'Notification',
      'Creat New Chat',
      'Creat New Chat',
      'Creat New Chat',
      'Creat New Chat',
      'Creat New Chat',
      'Creat New Chat',
    ];
    List <Icon> iicon = [
      Icon(Icons.pages),
      Icon(Icons.deblur),
      Icon(Icons.pages),
      Icon(Icons.eighteen_mp),
      Icon(Icons.pages),
      Icon(Icons.pages),
      Icon(Icons.pages),
      Icon(Icons.pages),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, bottom: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF1E88E5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person, color: Colors.grey),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Good Evening",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(height: 4),
                      Texts(text: 'Setup Your Account', color: Colors.white),
                    ],
                  ),
                ),
                const Icon(Icons.menu, color: Colors.white),
              ],
            ),
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context,index){
                return Container(
                  color: Colors.grey,
                  child:
                  Column(
                    children: [
                      Text(ttext[index]),iicon[index],
                    ],
                  )
                  ,
                );
              },
              itemCount: ttext.length,
            ),
          ),
        ],
      ),
    );
  }
}
