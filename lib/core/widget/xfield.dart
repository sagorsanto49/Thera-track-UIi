import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Xfield extends StatelessWidget {
  const Xfield({super.key, this.text, this.prefixIcons,this.suffixIcons});
final String? text;
final Icon? prefixIcons;
final IconButton? suffixIcons;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // icon:Icon(icon as IconData?),
        prefixIcon: prefixIcons,
       suffixIcon: suffixIcons,


        hintText: text,
        focusedBorder: OutlineInputBorder(

        ),
        enabledBorder: OutlineInputBorder()

      ),

    );
  }
}
