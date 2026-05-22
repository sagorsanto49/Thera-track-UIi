import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:flutter/material.dart';

class InvoiceSetup extends StatelessWidget {
  const InvoiceSetup({super.key});

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
          'Invoice Setup',
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
              // LOGO
              Container(
                height: 90,
                width: 90,

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                      BorderRadius.circular(10),

                  border: Border.all(
                    color: Colors.blue.shade200,
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8),

                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // ADD LOGO BUTTON
              SizedBox(
                width: 120,

                child: OutlinedButton.icon(
                  onPressed: () {},

                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.grey.shade400,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8),
                    ),
                  ),

                  icon: const Icon(
                    Icons.image_outlined,
                    size: 18,
                    color: Colors.grey,
                  ),

                  label: const Text(
                    "Add your logo",

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // INSTITUTION NAME
              Texts(text: 'Institution Name'),

              const SizedBox(height: 10),

              Xfield(
                text: 'Inner Peace Therapy Institute',
              ),

              const SizedBox(height: 20),

              // ADDRESS
              const Text(
                'Address',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'Street',

                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: '221B Baker Street'),

              const SizedBox(height: 20),

              // CITY
              const Text(
                'City',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: 'London'),

              const SizedBox(height: 20),

              // TOWN
              const Text(
                'Town',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: 'Westminster'),

              const SizedBox(height: 20),

              // ZIP CODE
              const Text(
                'Zip Code',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: 'NW1 6XE'),

              const SizedBox(height: 20),

              // PHONE
              const Text(
                'Phone',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: '+44 20 xxxx xxxx'),

              const SizedBox(height: 20),

              // EMAIL
              const Text(
                'Email Address',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(
                text: 'innerpeacetherapy@gmail.com',
              ),

              const SizedBox(height: 20),

              // WEBSITE
              const Text(
                'Website',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(
                text: 'innerpeacetherapy.com',
              ),

              const SizedBox(height: 35),

              // SAVE BUTTON
              SizedBox(
                width: double.infinity,

                child: Primarybutten(
                  title: 'Save',
                  onpress: () {},
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}