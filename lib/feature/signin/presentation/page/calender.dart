import 'package:doctor/feature/signin/presentation/controller/calender_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Calender extends StatelessWidget {
  Calender({super.key});

  final CalenderController controller = Get.put(CalenderController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final days = controller.getDaysForCurrentMonth();
        final selectdate = controller.selectedDate.value;
        final currentmonth = controller.currentMonth.value;

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
                            onTap: controller.previousMonth,
                            child: Icon(Icons.arrow_left),
                          ),
                          Text(DateFormat("MMMM yyyy").format(currentmonth)),
                          InkWell(
                            onTap: controller.nextMonth,
                            child: Icon(Icons.arrow_right),
                          ),
                        ],
                      ),
                      Divider(color: Colors.white),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 300.h,
                        width: double.infinity,
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

                            return InkWell(
                              onTap: () => controller.selectDate(day),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isselected ? Colors.blue : Colors.transparent,
                                  shape: BoxShape.circle,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
