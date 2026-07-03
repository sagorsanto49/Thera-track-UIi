import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime selectdate = DateTime(2025, 1, 24);
  DateTime currentmonth = DateTime(2025, 1);

  List<DateTime> givedate(DateTime month) {
    final lastDay = DateTime(month.year, month.month + 1, 0);

    return List.generate(
      lastDay.day,
      (index) => DateTime(month.year, month.month, index + 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    final days = givedate(currentmonth);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: Text("Calender"),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(DateFormat("MMMM dd, yyyy").format(selectdate)),
            SizedBox(height: 15.h),
            Container(
              color: Colors.lightBlue.shade200,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            currentmonth = DateTime(
                              currentmonth.year,
                              currentmonth.month - 1,
                            );
                          });
                        },
                        child: Icon(Icons.arrow_left),
                      ),

                      Text(DateFormat("MMMM yyyy").format(currentmonth)),

                      InkWell(
                        onTap: () {
                          setState(() {
                            currentmonth = DateTime(
                              currentmonth.year,
                              currentmonth.month + 1,
                            );
                          });
                        },
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                  Divider(color: Colors.white),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 300.h,
                    width: double.infinity,
                    child: Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        itemBuilder: (context, index) {
                          final day = days[index];
                          final isselected =
                              day.day == selectdate.day &&
                              day.month == selectdate.month &&
                              day.year == selectdate.year;

                          return InkWell(onTap: (){setState(() {
                            selectdate=day;
                          });},
                            child: Container(
                              // height: 2.h,
                              // width: 2.w,
                              decoration: BoxDecoration(
                              color: isselected? Colors.blue:Colors.transparent,shape: BoxShape.circle,
                            ),
                              child: Center(
                                child: Text(
                                  '${day.day}',
                                  style: TextStyle(
                                    color: isselected ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: days.length,
                      ),
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
