import 'package:doctor/feature/signin/presentation/page/invoice.dart';
import 'package:doctor/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {
        "icon": Icons.medical_services_outlined,
        "title": "Invoice Setup",
        "page": Invoice(),
      },
      {
        "icon": Icons.person_outline,
        "title": "Your Details",
        // "page": Step2(),
      },
      {
        "icon": Icons.format_list_bulleted,
        "title": "Treatments",
        // "page": ChangePassword(),
      },
      {
        "icon": Icons.payments_outlined,
        "title": "Paid",
        // "page": Step1(),
      },
      {
        "icon": Icons.money_off_csred_outlined,
        "title": "Unpaid",
        // "page": Step1(),
      },
      {
        "icon": Icons.workspace_premium_outlined,
        "title": "Subscription",
        "page": Subscription(),
      },
      {
        "icon": Icons.chat_bubble_outline,
        "title": "Feed back",
        // "page": Step1(),
      },
      {
        "icon": Icons.settings_outlined,
        "title": "Advance Setting",
        // "page": Step1(),
      },
    ];

    return Drawer(
      width: 270.w,

      child: Container(
        color: Color(0xff2492EA),

        child: Column(
          children: [
            // HEADER
            Container(
              width: double.infinity,

              padding: EdgeInsets.only(
                top: 50.h,
                bottom: 20.h,
              ),

              color: Color(0xffBFD6EA),

              child: Column(
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundColor: Colors.white,

                    child: ClipOval(
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // MENU ITEMS
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 15.h),

                itemCount: menuItems.length,

                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      menuItems[index]["icon"],
                      color: Colors.white,
                    ),

                    title: Text(
                      menuItems[index]["title"],

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                      ),
                    ),

                    // BUTTON ACTION
                    onTap: () {
                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) =>
                              menuItems[index]["page"],
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            // LOGOUT BUTTON
            Padding(
              padding: EdgeInsets.only(bottom: 40.h),

              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),

                title: Text(
                  "Log Out",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.sp,
                  ),
                ),

                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
