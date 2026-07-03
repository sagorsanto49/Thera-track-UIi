import 'package:doctor/feature/signin/presentation/page/unpaid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/core/widget/text.dart';

class PaidScreen extends StatelessWidget {
  const PaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> clients = [
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
        title: Text("Paid"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: [
            /// Client List
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green.shade100,
                      ),
                    ),
                    child: Column(
                      children: clients.map((client) {
                        return Container(
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.green.shade100,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Texts(
                                      text: client["name"],
                                    ),

                                    SizedBox(height: 6.h),

                                    Texts(
                                      text: "14 jan 2025",
                                      // fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),

                              Texts(
                                text:
                                    "${client["amount"]} \$",
                                color: Colors.green,
                                // fontSize: 18.sp,
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  SizedBox(height: 20.h),

                  /// Total
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
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

                              SizedBox(height: 6.h),

                              Texts(
                                text: "14 jan 2025",
                                // fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),

                        Texts(
                          text: "750 \$",
                          color: Colors.green,
                          // fontSize: 22.sp,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 50.h),

                  /// Email Section
                  Container(
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Color(0xffB8D7F0),
                      borderRadius:
                          BorderRadius.circular(4.r),
                    ),
                    child: Column(
                      children: [
                        Xfield(
                          text:
                              "someone@gmail.com",
                        ),

                        SizedBox(height: 18.h),

                        Align(
                          alignment:
                              Alignment.centerLeft,
                          child: Texts(
                            text:
                                "Data will be sent to the email above.",
                            // fontSize: 13.sp,
                          ),
                        ),

                        SizedBox(height: 20.h),

                        SizedBox(
                          width: 140.w,
                          child: Primarybutten(
                            title: "Send", onpress: () { 
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>UnPaidScreen()));
                             },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
