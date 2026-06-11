import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/equipment.dart';
import 'package:flutter/material.dart';

class Home5 extends StatelessWidget {
  const Home5({super.key});

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
            SizedBox(height: 10,),  Xfield(text: 'Hydrotherapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10,),  Xfield(text: 'Laser Therapy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 10,),  Xfield(text: 'Osteopathy',suffixIcons: IconButton(
              onPressed: () {},
              icon: Icon(Icons.align_horizontal_right),
            ),),
            SizedBox(height: 30,),
            Primarybutten(title: 'Next', onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Equipment() ));
            })

          ],
        ),
      ),

    );
  }
}
