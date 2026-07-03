import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/step52.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Equipment extends StatelessWidget {
  Equipment({super.key});

  final List<String> items = ['Horse Shoes', 'Lead', 'Ear Net', 'Hoof Pick'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Equipment',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product name',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 35.w),
                  child: Text(
                    'Quantity',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25.h),

            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items[index],
                          style: TextStyle(fontSize: 1.6.sp,
                            color: Colors.grey.shade700,
                          ),
                        ),

                        Row(
                          children: [
                            quantityButton(Icons.remove),

                            SizedBox(width: 10.w),

                            Container(
                              height: 42.h,
                              width: 70.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Text('1', style: TextStyle(fontSize: 1.8.sp)),
                            ),

                            SizedBox(width: 10.w),

                            quantityButton(Icons.add),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Primarybutten(title: 'Next', onpress: () {
              Navigator .push(context, MaterialPageRoute(builder: (context)=> Step5Page()));
            }),
            SizedBox(height: 400.h),
          ],
        ),
      ),
    );
  }

  //custome
  Widget quantityButton(IconData icon) {
    return Container(
      height: 32.h,
      width: 32.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Icon(icon, size: 18.r, color: Colors.grey),
    );
  }
}
