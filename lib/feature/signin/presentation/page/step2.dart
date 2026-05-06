import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/material.dart';

class Step2 extends StatelessWidget {
  const Step2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Step 2',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts(text: 'Name'),
              SizedBox(height: 10),
              Xfield(text: 'Enter name'),
              SizedBox(height: 12),

              Texts(text: 'Address'),
              SizedBox(height: 12),

              Texts(text: 'City'),
              SizedBox(height: 10),

              Xfield(text: 'Enter City'),
              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(text: 'State'),
                        SizedBox(height: 10),
                        Xfield(text: 'Enter State'),
                      ],
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(text: 'State'),
                        SizedBox(height: 10),
                        Xfield(text: 'Enter State'),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 14),

              Texts(text: 'Phone Number'),
              SizedBox(height: 10),

              Xfield(text: 'Enter Phone Number'),
              SizedBox(height: 10),

              Texts(text: 'Email'),
              SizedBox(height: 10),

              Xfield(text: 'Aro7@gmail.com'),
              SizedBox(height: 10),

              Texts(text: 'Other'),
              SizedBox(height: 10),

              Xfield(text: ' <>'),
            ],
          ),
        ),
      ),
    );
  }
}