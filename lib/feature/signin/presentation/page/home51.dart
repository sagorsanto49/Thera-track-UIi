import 'package:doctor/feature/signin/presentation/page/step6.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home51 extends StatelessWidget {
  const Home51({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18.r,
        ),
        title: Text(
          'Step 5',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
     
     
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            SizedBox(height: 10.h),

            // Therapy List
            ServiceRow(
              title: 'Cryotherapy',
              price: '20\$',
            ),
            SizedBox(height: 18.h),

            ServiceRow(
              title: 'Massage Therapy',
              price: '30\$',
            ),
            SizedBox(height: 18.h),

            ServiceRow(
              title: 'Acupuncture',
              price: '25\$',
            ),
            SizedBox(height: 18.h),

            ServiceRow(
              title: 'Heat and Cold Therapy',
              price: '100\$',
            ),

            SizedBox(height: 12.h),

            Divider(
              color: Colors.black54,
              thickness: 1,
            ),

            SizedBox(height: 12.h),

            ServiceRow(
              title: 'Full Cost',
              price: '175\$',
            ),

            SizedBox(height: 16.h),

            // Discount Box
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: Color(0xffF1F8FF),
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Discount',
                      style: TextStyle(fontSize: 1.6.sp,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Text(
                    ':',
                    style: TextStyle(fontSize: 1.6.sp,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    '5\$',
                    style: TextStyle(fontSize: 1.6.sp,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.h),

            ServiceRow(
              title: 'Final Cost',
              price: '170\$',
            ),

            Spacer(),

            // Button
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Step6Page()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 1.6.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

class ServiceRow extends StatelessWidget {
  final String title;
  final String price;

  const ServiceRow({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 1.6.sp,
              color: Colors.black87,
            ),
          ),
        ),
        Text(
          ':',
          style: TextStyle(fontSize: 1.6.sp,
            color: Colors.black87,
          ),
        ),
        SizedBox(width: 20.w),
        Text(
          price,
          style: TextStyle(fontSize: 1.6.sp,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
