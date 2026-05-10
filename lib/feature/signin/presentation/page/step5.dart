import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Treatment's",style: TextStyle(fontSize: 20),),
                Icon(Icons.eight_k_plus)
              ],
            ),
            SizedBox(height: 10,),
            Xfield(text: 'Cryotherapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10,),  Xfield(text: 'Cryotherapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10,),  Xfield(text: 'Cryotherapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10,),  Xfield(text: 'Cryotherapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10,),

          ],
        ),
      ),

    );
  }
}
