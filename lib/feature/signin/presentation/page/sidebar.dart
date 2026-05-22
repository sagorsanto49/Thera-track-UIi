import 'package:doctor/feature/signin/presentation/page/invoice.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {
        "icon": Icons.medical_services_outlined,
        "title": "Invoice Setup",
        "page": const Invoice(),
      },
      {
        "icon": Icons.person_outline,
        "title": "Your Details",
        // "page": const Step2(),
      },
      {
        "icon": Icons.format_list_bulleted,
        "title": "Treatments",
        // "page": const ChangePassword(),
      },
      {
        "icon": Icons.payments_outlined,
        "title": "Paid",
        // "page": const Step1(),
      },
      {
        "icon": Icons.money_off_csred_outlined,
        "title": "Unpaid",
        // "page": const Step1(),
      },
      {
        "icon": Icons.workspace_premium_outlined,
        "title": "Subscription",
        // "page": const Step1(),
      },
      {
        "icon": Icons.chat_bubble_outline,
        "title": "Feed back",
        // "page": const Step1(),
      },
      {
        "icon": Icons.settings_outlined,
        "title": "Advance Setting",
        // "page": const Step1(),
      },
    ];

    return Drawer(
      width: 270,

      child: Container(
        color: const Color(0xff2492EA),

        child: Column(
          children: [
            // HEADER
            Container(
              width: double.infinity,

              padding: const EdgeInsets.only(
                top: 50,
                bottom: 20,
              ),

              color: const Color(0xffBFD6EA),

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
                padding: const EdgeInsets.only(top: 15),

                itemCount: menuItems.length,

                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      menuItems[index]["icon"],
                      color: Colors.white,
                    ),

                    title: Text(
                      menuItems[index]["title"],

                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
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
              padding: const EdgeInsets.only(bottom: 40),

              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),

                title: const Text(
                  "Log Out",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
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