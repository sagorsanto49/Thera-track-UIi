import 'package:doctor/feature/signin/presentation/page/appointmentsPage.dart';
import 'package:doctor/feature/signin/presentation/page/chart.dart';
import 'package:doctor/feature/signin/presentation/page/contactsPage.dart';
import 'package:doctor/feature/signin/presentation/page/inventoryPage.dart';
import 'package:doctor/feature/signin/presentation/page/notificationPage.dart';
import 'package:doctor/feature/signin/presentation/page/offlineFilesPage.dart';
import 'package:doctor/feature/signin/presentation/page/travelPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  CostPage(),
];

    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 70.h,
              bottom: 30.h,
              left: 15.w,
              right: 10.w,
            ),
            width: double.infinity,

            decoration: BoxDecoration(
              color: Color(0xFF1E88E5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r),
              ),
            ),

            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),

                SizedBox(width: 20.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Good Evening",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14.sp,
                        ),
                      ),

                      SizedBox(height: 4.h),

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
                      icon: Icon(
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
              padding: EdgeInsets.all(10.r),

              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),

              itemCount: ttext.length,

              itemBuilder: (context, index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(20.r),

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
                      color: Color(0xffE9F5FE),
                      borderRadius:
                          BorderRadius.circular(20.r),
                    ),

                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center,

                      children: [
                        Icon(
                          iicon[index],
                          size: 35.r,
                          color: Colors.blue,
                        ),

                        SizedBox(height: 10.h),

                        Text(
                          ttext[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 1.5.sp,
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
