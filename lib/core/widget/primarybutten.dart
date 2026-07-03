import 'package:doctor/colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Primarybutten extends StatelessWidget {
  const Primarybutten({
    super.key,
    required this.title,
    required this.onpress,
    this.size,
    this.bold,
  });
  final String title;
  final VoidCallback onpress;
  final double? size;
  final FontWeight? bold;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 54.h,
        width: 400.w,
        decoration: BoxDecoration(
          color: CustomColor.buttonColor,
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: size,
              fontWeight: bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
