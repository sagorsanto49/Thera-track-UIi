import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/step4.dart';
import 'package:flutter/material.dart';

class Step4home extends StatelessWidget {
  const Step4home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Xfield(text: 'Name       : Boss'),
              SizedBox(height: 10),
              Xfield(text: 'Age          : 5 year'),
              SizedBox(height: 10),
              Xfield(text: 'Breed       : Thomas'),
              SizedBox(height: 10),
              Xfield(text: 'Gender     : M'),
              SizedBox(height: 10),
              Xfield(text: 'Hight        : 5'),
              SizedBox(height: 10),
              Xfield(text: 'Color        : Blsck'),
              SizedBox(height: 20,),
              Texts(text: 'Select Animal'),
              SizedBox(height: 18,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: SizedBox(
                      height: 55,
                      child: Xfield(
                        text: 'kudfrhg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),Row(
                children: [
                  Expanded(
                    child: Xfield(text: '------'),
                  ),
                  const SizedBox(width: 10),

                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Step4home()));
                      },
                      child: const Text(
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
              SizedBox(height: 10,),
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
