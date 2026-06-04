import 'package:doctor/feature/signin/presentation/page/appointmentsPage.dart';
import 'package:doctor/feature/signin/presentation/page/chart.dart';
import 'package:doctor/feature/signin/presentation/page/contactsPage.dart';
import 'package:doctor/feature/signin/presentation/page/inventoryPage.dart';
import 'package:doctor/feature/signin/presentation/page/notificationPage.dart';
import 'package:doctor/feature/signin/presentation/page/offlineFilesPage.dart';
import 'package:doctor/feature/signin/presentation/page/travelPage.dart';
import 'package:flutter/material.dart';

import 'package:doctor/core/widget/text.dart';
import 'package:doctor/feature/signin/presentation/page/sidebar.dart';

import 'package:doctor/feature/signin/presentation/page/step1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> ttext = [
      'Create New Chat',
      'Notification',
      'Chart Archive',
      'Contacts',
      'Appointments',
      'Offline Files',
      'Inventory',
      'Travel',
    ];

    final List<IconData> iicon = [
      Icons.chat_bubble,
      Icons.notification_add,
      Icons.area_chart,
      Icons.contact_page,
      Icons.date_range,
      Icons.offline_bolt,
      Icons.inventory,
      Icons.travel_explore,
    ];

    // প্রতিটি মেনুর জন্য আলাদা পেজ
    final List<Widget> pages = [
  Step1(),
  NotificationPage(),
  ChartArchivePage(),
  ContactsPage(),
  AppointmentsPage(),
  OfflineFilesPage(),
  InventoryPage(),
  TravelPage(),
];

    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white,

      body: Column(
        children: [
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
                  borderRadius: BorderRadius.circular(20),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            pages[index],
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
                        Icon(
                          iicon[index],
                          size: 35,
                          color: Colors.blue,
                        ),

                        const SizedBox(height: 10),

                        Text(
                          ttext[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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