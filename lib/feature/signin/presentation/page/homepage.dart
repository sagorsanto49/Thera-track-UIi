import 'package:doctor/core/widget/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    List <String> ttext = [
      'Create New Chat',
      'Notification',
      'Chart Archive',
      'Contacts',
      'Appointments',
      'Offline Files',
      'Invents',
      'Travel',
    ];
    List <Icon> iicon = [
      Icon(Icons.chat_bubble),
      Icon(Icons.notification_add),
      Icon(Icons.area_chart),
      Icon(Icons.contact_page),
      Icon(Icons.date_range),
      Icon(Icons.offline_bolt),
      Icon(Icons.inventory),
      Icon(Icons.travel_explore),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
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
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context,index){
                return Container(decoration: BoxDecoration(
                  color: Color(0xffE9F5FE
                  ),borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                  
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     iicon[index], Text(ttext[index]),
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
