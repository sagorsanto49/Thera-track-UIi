import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/material.dart';

class Yourdetails extends StatelessWidget {
  const Yourdetails({super.key});

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
              Align(
  alignment: Alignment.centerRight,

  child: ElevatedButton.icon(
    onPressed: () {
      
    },

    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff1E88E5),

      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),

    icon: const Icon(
      Icons.edit,
      size: 15,
      color: Colors.white,
    ),

    label: const Text(
      'Edit',

      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
    ),
  ),
),

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

              ),
            ],
          ),
        ),
      ),
    );
  }
}