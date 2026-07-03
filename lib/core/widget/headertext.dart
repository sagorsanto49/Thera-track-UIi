import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Headertext extends StatelessWidget {
  const Headertext({super.key,required this.title,required this.subtitle});
final String title;
final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start,
      children: [
        ListTile(
          title: Text(title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.h),
              Text(subtitle),
            ],
          ),
        ),
      ],
    );
  }
}
