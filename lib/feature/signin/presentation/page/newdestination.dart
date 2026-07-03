import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/page/cost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCostPage extends StatelessWidget {
  const AddCostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cost"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          children: [
            buildRow("Departure", "Starting place name"),
            buildRow("Destination", "Place name"),
            buildRow("Distance", "00 Km"),
            buildRow("Food", "00\$"),
            buildRow("Gas", "00\$"),
            buildRow("Other", "00\$"),

            SizedBox(height: 20.h),

            Container(
              height: 160.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                ),
              ),
              child: Center(
                child: Text(
                  "Click to browse or\nDrag and Drop your files",
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Spacer(),

            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: Primarybutten(title: 'Save', onpress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cost()));
              })
            )
          ],
        ),
      ),
    );
  }

  Widget buildRow(String title, String hint) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      color:  Colors.lightBlue,
      child: Row(
        children: [
          Expanded(
            child: Text(title),
          ),
          SizedBox(
            width: 150.w,
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
