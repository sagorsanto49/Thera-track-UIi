import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/equipment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step5 extends StatelessWidget {
  const Step5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Step 5',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Treatment's",style: TextStyle(fontSize: 2.0.sp),),
                Icon(Icons.eight_k_plus)
              ],
            ),
            SizedBox(height: 10.h,),
            Xfield(text: 'Cryotherapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10.h,),  Xfield(text: 'Hydrotherapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10.h,),  Xfield(text: 'Laser Therapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10.h,),  Xfield(text: 'Osteopathy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 30.h,),
            Primarybutten(title: 'Next', onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Equipment() ));
            })

          ],
        ),
      ),

    );
  }
}
