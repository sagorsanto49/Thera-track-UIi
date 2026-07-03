import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/step4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step4home extends StatelessWidget {
  const Step4home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Xfield(text: 'Name       : Boss'),
              SizedBox(height: 10.h),
              Xfield(text: 'Age          : 5 year'),
              SizedBox(height: 10.h),
              Xfield(text: 'Breed       : Thomas'),
              SizedBox(height: 10.h),
              Xfield(text: 'Gender     : M'),
              SizedBox(height: 10.h),
              Xfield(text: 'Hight        : 5'),
              SizedBox(height: 10.h),
              Xfield(text: 'Color        : Blsck'),
              SizedBox(height: 20.h,),
              Texts(text: 'Select Animal'),
              SizedBox(height: 18.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 55.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Horse',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10.w),

                  Expanded(
                    child: SizedBox(
                      height: 55.h,
                      child: Xfield(
                        text: 'Dog',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),Row(
                children: [
                  Expanded(
                    child: Xfield(text: '------'),
                  ),
                  SizedBox(width: 10.w),

                  SizedBox(
                    height: 50.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Step4home()));
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Primarybutten(title: 'Done', onpress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Step4()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
