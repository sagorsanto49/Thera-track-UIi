import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddClientPage extends StatelessWidget {
  final Map<String, String> client;

  const AddClientPage({
    super.key,
    this.client = const {},
  });

  Widget infoTile(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            value,
            style: TextStyle(fontSize: 1.6.sp),
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clients"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: ListView(
          children: [
            Text(
              client["name"] ?? "",
              style: TextStyle(fontSize: 2.2.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20.h),

            infoTile("Address", client["address"] ?? ""),
            infoTile("Postcode", client["postcode"] ?? ""),
            infoTile("Telephone", client["telephone"] ?? ""),
            infoTile("Mobile", client["mobile"] ?? ""),
            infoTile("Email", client["email"] ?? ""),
            infoTile("Other", client["other"] ?? ""),

            TextButton(
              onPressed: () {},
              child: Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }
}
