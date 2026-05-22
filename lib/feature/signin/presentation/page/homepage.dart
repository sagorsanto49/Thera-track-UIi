import 'package:doctor/core/widget/text.dart';
import 'package:doctor/feature/signin/presentation/page/sidebar.dart';
import 'package:doctor/feature/signin/presentation/page/step1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ttext = [
      'Create New Chat',
      'Notification',
      'Chart Archive',
      'Contacts',
      'Appointments',
      'Offline Files',
      'Invents',
      'Travel',
    ];

    List<Icon> iicon = [
      const Icon(Icons.chat_bubble),
      const Icon(Icons.notification_add),
      const Icon(Icons.area_chart),
      const Icon(Icons.contact_page),
      const Icon(Icons.date_range),
      const Icon(Icons.offline_bolt),
      const Icon(Icons.inventory),
      const Icon(Icons.travel_explore),
    ];

    List page = [
      const Step1(),
      const Step1(),
      const Step1(),
      const Step1(),
      const Step1(),
      const Step1(),
      const Step1(),
      const Step1(),
    ];

    return Scaffold(
      // DRAWER ADDED HERE
      drawer: const CustomDrawer(),

      backgroundColor: Colors.white,

      body: Column(
        children: [
          // TOP HEADER
          Container(
            padding: const EdgeInsets.only(
              top: 70,
              bottom: 30,
              left: 15,
              right: 10,
            ),

            width: double.infinity,

            decoration: const BoxDecoration(
              color: Color(0xFF1E88E5),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),

            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,

                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(width: 20),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [
                      const Text(
                        "Hello, Good Evening",

                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Texts(
                        text: 'Setup Your Account',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),

                // MENU BUTTON
                Builder(
                  builder: (context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),

                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
              ],
            ),
          ),

          // GRID VIEW
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),

              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),

              itemCount: ttext.length,

              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            page[index],
                      ),
                    );
                  },

                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffE9F5FE),

                      borderRadius:
                          BorderRadius.circular(20),
                    ),

                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center,

                      children: [
                        iicon[index],

                        const SizedBox(height: 10),

                        Text(ttext[index]),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}