// import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Step62 extends StatelessWidget {
//   Step62({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("dkhjfik"),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Step62 extends StatefulWidget {
  const Step62({super.key});

  @override
  State<Step62> createState() => Step62State();
}

class Step62State extends State<Step62> {
  DateTime selectedDate = DateTime(2025, 1, 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,

        leading: Icon(
          Icons.arrow_back_ios,
          size: 18.r,
          color: Colors.black,
        ),

        title: Text(
          "Step 6",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.r),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// DATE
            Row(
              children: [

                Text(
                  "January 24, 2025",
                  style: TextStyle(fontSize: 1.6.sp,
                  ),
                ),

                SizedBox(width: 10.w),

                Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Icon(
                    Icons.calendar_today,
                    size: 18.r,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            /// CALENDAR
            Container(
              padding: EdgeInsets.all(12.r),

              decoration: BoxDecoration(
                color: Color(0xffdfe9f2),
                borderRadius: BorderRadius.circular(2.r),
              ),

              child: Column(
                children: [

                  /// HEADER
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      Icon(Icons.chevron_left),

                      Text(
                        "January 2025",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Icon(Icons.chevron_right),
                    ],
                  ),

                  SizedBox(height: 10.h),

                  Divider(),

                  /// DAYS NAME
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,

                    children: [
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                    ],
                  ),

                  SizedBox(height: 15.h),

                  /// DATES
                  buildDateRow([
                    "30",
                    "31",
                    "01",
                    "02",
                    "03",
                    "04",
                    "05"
                  ]),

                  buildDateRow([
                    "06",
                    "07",
                    "08",
                    "09",
                    "10",
                    "11",
                    "12"
                  ]),

                  buildDateRow([
                    "13",
                    "14",
                    "15",
                    "16",
                    "17",
                    "18",
                    "19"
                  ]),

                  buildDateRow([
                    "20",
                    "21",
                    "22",
                    "23",
                    "24",
                    "25",
                    "26"
                  ], selectedIndex: 4),

                  buildDateRow([
                    "27",
                    "28",
                    "29",
                    "30",
                    "31",
                    "01",
                    "02"
                  ]),
                ],
              ),
            ),

            SizedBox(height: 15.h),

            /// TIME PICKER
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),

              decoration: BoxDecoration(
                color: Color(0xffdfe9f2),
                borderRadius: BorderRadius.circular(2.r),
              ),

              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,

                children: [

                  /// AM PM
                  Column(
                    children: [

                      Text(
                        "AM",
                        style: TextStyle(fontSize: 2.4.sp),
                      ),

                      SizedBox(height: 15.h),

                      Text(
                        "PM",
                        style: TextStyle(fontSize: 2.4.sp),
                      ),
                    ],
                  ),

                  Container(
                    height: 90.h,
                    width: 1.w,
                    color: Colors.blue.shade200,
                  ),

                  /// HOURS
                  Column(
                    children: [

                      Text(
                        "11",
                        style: TextStyle(fontSize: 2.2.sp,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "12",
                        style: TextStyle(fontSize: 2.6.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "01",
                        style: TextStyle(fontSize: 2.2.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    height: 90.h,
                    width: 1.w,
                    color: Colors.blue.shade200,
                  ),

                  /// MINUTES
                  Column(
                    children: [

                      Text(
                        "59",
                        style: TextStyle(fontSize: 2.2.sp,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "00",
                        style: TextStyle(fontSize: 2.6.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "01",
                        style: TextStyle(fontSize: 2.2.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.h),

            /// EVENT BOX
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade300,
                ),
              ),

              child: Column(
                children: [

                  /// ALL DAY
                  Padding(
                    padding: EdgeInsets.all(8.r),

                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        Text(
                          "All-Day",
                          style: TextStyle(fontSize: 1.8.sp),
                        ),

                        Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius:
                                BorderRadius.circular(4.r),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(
                    height: 1.h,
                    color: Colors.grey.shade400,
                  ),

                  /// START
                  buildTimeRow(
                    title: "Start",
                  ),

                  Divider(
                    height: 1.h,
                    color: Colors.grey.shade400,
                  ),

                  /// END
                  buildTimeRow(
                    title: "End",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),

            /// REMINDER
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 14,
              ),

              decoration: BoxDecoration(
                color: Color(0xffdfe9f2),
                borderRadius: BorderRadius.circular(2.r),
              ),

              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  Text(
                    "Reminder",
                    style: TextStyle(fontSize: 1.8.sp,
                    ),
                  ),

                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),

            SizedBox(height: 40.h),

            /// DONE BUTTON
            SizedBox(
              width: double.infinity,
              height: 50.h,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                onPressed: () {},

                child: Text(
                  "Done",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// DATE ROW
  Widget buildDateRow(
    List<String> dates, {
    int selectedIndex = -1,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround,

        children: List.generate(
          dates.length,
          (index) {
            bool isSelected =
                index == selectedIndex;

            return Container(
              height: 35.h,
              width: 35.w,
              alignment: Alignment.center,

              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.blue
                    : Colors.transparent,

                shape: BoxShape.circle,
              ),

              child: Text(
                dates[index],
                style: TextStyle(
                  color: isSelected
                      ? Colors.white
                      : Colors.black87,

                  fontSize: 16.sp,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// TIME ROW
  Widget buildTimeRow({
    required String title,
  }) {
    return Padding(
      padding: EdgeInsets.all(8.r),

      child: Row(
        children: [

          SizedBox(
            width: 80.w,
            child: Text(
              title,
              style: TextStyle(fontSize: 1.8.sp,
              ),
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 10,
              ),

              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(2.r),
              ),

              child: Text(
                "24 Jan, 2025",
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(width: 8.w),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 10,
              ),

              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(2.r),
              ),

              child: Text(
                "12:00AM",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// DAY NAME
class DayName extends StatelessWidget {
  final String text;

  const DayName(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 1.0.sp,
        color: Colors.grey,
      ),
    );
  }
}
