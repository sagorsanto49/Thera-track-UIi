import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
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

        title: const Text(
          'Invoice Setup',
          style: TextStyle(color: Colors.black),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      // SCROLLABLE BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // TOP ROW
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
                      onpress: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // INSTITUTION NAME
              Texts(text: 'Institution Name'),

              const SizedBox(height: 10),

              Xfield(text: 'Institute'),

              const SizedBox(height: 20),

              // ADDRESS
              const Headertext(
                title: 'Address',
                subtitle: 'Street',
              ),

              const SizedBox(height: 10),

              Xfield(text: 'Street'),

              const SizedBox(height: 15),

              const Text(
                'City',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 10),

              Xfield(text: 'Dhaka'),

              const SizedBox(height: 15),

              const Text(
                'Town',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 10),

              Xfield(text: 'Mirpur'),

              const SizedBox(height: 15),

              const Text(
                'Zip Code',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 10),

              Xfield(text: '1206'),

              const SizedBox(height: 20),

              // PHONE NUMBER
              Texts(text: 'Phone Number'),

              const SizedBox(height: 10),

              Xfield(text: '+880123456789'),

              const SizedBox(height: 20),

              // EMAIL
              Texts(text: 'Email Address'),

              const SizedBox(height: 10),

              Xfield(text: 'example@gmail.com'),

              const SizedBox(height: 20),

              // WEBSITE
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