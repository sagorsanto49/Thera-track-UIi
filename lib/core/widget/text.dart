import 'package:doctor/colour/font.dart';
import 'package:flutter/cupertino.dart';

class Texts extends StatelessWidget {
  const Texts({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),);
  }
}
