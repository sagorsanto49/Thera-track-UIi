import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/material.dart';

class Step4 extends StatelessWidget {
  const Step4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Step 4',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          Headertext(
            title: 'Select the area of Concern',
            subtitle:
            'Select one or more areas. If unsure select Other',
          ),
          SizedBox(height: 10),

          Container(
            height: 200,
            width: 320,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
            ),
            child: Center(
              child: Text(
                'Click to browse or\n drag and drop your files',
              ),
            ),
          ),

          SizedBox(height: 10),

          Row(
            children: [
              Expanded(child: Xfield(text: 'Joints')),
              SizedBox(width: 8),
              Expanded(child: Xfield(text: 'Back')),
              SizedBox(width: 8),
              Expanded(child: Xfield(text: 'Paws')),
            ],
          ),

          SizedBox(height: 10),

          Row(
            children: [
              Expanded(child: Xfield(text: 'Muscles')),
              SizedBox(width: 8),
              Expanded(child: Xfield(text: 'Neck')),
              SizedBox(width: 8),
              Expanded(child: Xfield(text: 'Ears')),
            ],
          ),

          SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: Xfield(text: '------'),
              ),
              SizedBox(width: 8),

              SizedBox(
                height: 48, // same height as Xfield
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Add'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}