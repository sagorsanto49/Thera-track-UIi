import 'package:doctor/colour/colour.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Primarybutten extends StatelessWidget {
  const Primarybutten({super.key, required this.title, required this.onpress, this.size, this.bold});
 final String title;
 final VoidCallback onpress;
 final double? size;
 final FontWeight? bold;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 54,
        width: 400,
        child: Center(child: Text(title,style: TextStyle(fontSize: size,fontWeight: bold,color: Colors.white),)),
        decoration: BoxDecoration(
          color: CustomColor.buttonColor,borderRadius: BorderRadius.circular(2),

        ),
      ),
    );
  }
}
