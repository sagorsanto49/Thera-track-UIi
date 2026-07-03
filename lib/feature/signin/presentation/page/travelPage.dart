import 'package:doctor/feature/signin/presentation/page/newdestination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostPage extends StatelessWidget {
  const CostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Cost",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCostPage()));
              },
              child: Text("Add New"),
            ),
          )
        ],
      ),
      
      
      body: Padding(
        padding: EdgeInsets.all(18.r),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Color(0xffeaf4ff),
                  ),
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("Distance"),
                    tableCell("Cost"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Start Place"),
                    tableCell("Destination"),
                    tableCell("50 Km"),
                    tableCell("120"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("100 Km"),
                    tableCell("200"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("80 Km"),
                    tableCell("300"),
                  ],
                ),
                TableRow(
                  children: [
                    tableCell("Departure"),
                    tableCell("Destination"),
                    tableCell("60 Km"),
                    tableCell("150"),
                  ],
                ),
              ],
            ),

            Spacer(),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 133, 126, 171),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "someone@gmail.com",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Data will be sent to the email above.",
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    width: 130.w,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      label: Text("Send"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Custom
class tableCell extends StatelessWidget {
  final String text;

  const tableCell(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.r),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 1.2.sp),
        ),
      ),
    );
  }
}
