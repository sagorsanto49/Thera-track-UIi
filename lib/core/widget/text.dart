import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Texts extends StatelessWidget {
  const Texts({super.key, required this.text, this.color = Colors.black});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: color),
    );
  }
}
