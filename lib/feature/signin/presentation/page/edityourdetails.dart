import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/treatment.dart';
import 'package:flutter/material.dart';

class EditYourDetails extends StatelessWidget {
  const EditYourDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        centerTitle: true,

        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),

        title: const Text(
          'Your Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 20),

              const Text(
                'Name',

                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              Xfield(text: 'Darlene Robertson'),

              const SizedBox(height: 20),

              const Text(
                'Town / City',

                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              Xfield(text: 'St Albans'),

              const SizedBox(height: 20),

              const Text(
                'Postcode',

                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              Xfield(text: '5656'),

              const SizedBox(height: 20),

              const Text(
                'country',

                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              Xfield(text: 'USA'),

              const SizedBox(height: 20),

              const Text(
                'Mobile',

                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              Xfield(text: '01700000000'),

              const SizedBox(height: 20),

              const Text(
                'Main Email Address',

                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              Xfield(text: 'someone@gmail.com'),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,

                child: Primarybutten(
                  title: 'Save',
                  onpress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TreatmentScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}