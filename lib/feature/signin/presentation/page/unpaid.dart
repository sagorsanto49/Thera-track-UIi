import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/feadback.dart';

class UnPaidScreen extends StatelessWidget {
  const UnPaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final clients = [
      {"name": "Client 01", "amount": 150},
      {"name": "Client 02", "amount": 150},
      {"name": "Client 03", "amount": 150},
      {"name": "Client 04", "amount": 150},
      {"name": "Client 05", "amount": 150},
    ];

    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        title: Text(
          "UnPaid",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(16.r),
        children: [
          /// Client List
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.green.shade100,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: clients.length,
              separatorBuilder: (context, index) => Divider(
                height: 1.h,
                color: Colors.green.shade100,
              ),
              itemBuilder: (context, index) {
                final client = clients[index];

                return ListTile(
                  title: Texts(
                    text: client["name"].toString(),
                  ),
                  subtitle: Texts(
                    text: "14 Jan 2025",
                    color: Colors.grey,
                  ),
                  trailing: Texts(
                    text: "${client["amount"]} \$",
                    color: Colors.red,
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20.h),

          /// Total Section
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Texts(
                        text: "Total",
                      ),
                      SizedBox(height: 5.h),
                      Texts(
                        text: "14 Jan 2025",
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                Texts(
                  text: "750 \$",
                  color: Colors.red,
                ),
              ],
            ),
          ),

          SizedBox(height: 30.h),

          /// Email Section
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Color(0xffB8D7F0),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              children: [
                Xfield(
                  text: "someone@gmail.com",
                ),

                SizedBox(height: 15.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Texts(
                    text:
                        "Data will be sent to the email above.",
                  ),
                ),

                SizedBox(height: 20.h),

                SizedBox(
                  width: 150.w,
                  child: Primarybutten(
                    title: "Send",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              FeedbackPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
