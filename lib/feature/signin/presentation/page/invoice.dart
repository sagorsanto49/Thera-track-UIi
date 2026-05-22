import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/invoicesetup.dart';
import 'package:flutter/material.dart';

class Invoice extends StatelessWidget {
  const Invoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),

        title: const Text(
          'Invoice Setup',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),

      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
            
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [
                  const CircleAvatar(
                    radius: 35,

                    backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                    ),
                  ),

                  SizedBox(
                    width: 80,

                    child: Primarybutten(
                      title: 'Edit',
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (Context)=> InvoiceSetup()));
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

            
              Texts(text: 'Institution Name'),

              const SizedBox(height: 10),

              Xfield(text: 'Institute'),

              const SizedBox(height: 25),

            
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: const [
                  Text(
                    'Address',

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    'Street',

                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Xfield(text: 'Street'),

              const SizedBox(height: 20),

              
              const Text(
                'City',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: 'Dhaka'),

              const SizedBox(height: 20),

            
              const Text(
                'Town',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: 'Mirpur'),

              const SizedBox(height: 20),

            
              const Text(
                'Zip Code',

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Xfield(text: '1206'),

              const SizedBox(height: 25),

              
              Texts(text: 'Phone Number'),

              const SizedBox(height: 10),

              Xfield(text: '+880123456789'),

              const SizedBox(height: 25),

            
              Texts(text: 'Email Address'),

              const SizedBox(height: 10),

              Xfield(text: 'example@gmail.com'),

              const SizedBox(height: 25),

              
              Texts(text: 'Website'),

              const SizedBox(height: 10),

              Xfield(text: 'www.example.com'),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}