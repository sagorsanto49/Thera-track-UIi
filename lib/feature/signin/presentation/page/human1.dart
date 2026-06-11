import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/home3.dart';
import 'package:flutter/material.dart';

class Human1 extends StatelessWidget {
  const Human1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Step @ 3',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Texts(text: 'Name'),
                const SizedBox(height: 8),
                Xfield(text: 'Enter name'),

                const SizedBox(height: 16),

                Texts(text: 'Address'),
                const SizedBox(height: 8),
                Xfield(text: 'Enter address'),

                const SizedBox(height: 16),

                Texts(text: 'City'),
                const SizedBox(height: 8),
                Xfield(text: 'Enter city'),

                const SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(text: 'State'),
                          const SizedBox(height: 8),
                          Xfield(text: 'Enter state'),
                        ],
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(text: 'Zip Code'),
                          const SizedBox(height: 8),
                          Xfield(text: 'Enter zip code'),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                Texts(text: 'Phone Number'),
                const SizedBox(height: 8),
                Xfield(text: 'Enter phone number'),

                const SizedBox(height: 16),

                Texts(text: 'Email'),
                const SizedBox(height: 8),
                Xfield(text: 'Enter email'),

                const SizedBox(height: 16),

                Texts(text: 'Other Information'),
                const SizedBox(height: 8),
                Xfield(text: 'Write something'),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home3()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}