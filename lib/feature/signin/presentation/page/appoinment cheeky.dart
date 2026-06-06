import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/page/calender.dart';
import 'package:flutter/material.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';

class Appoinmentcheeky extends StatelessWidget {
  const Appoinmentcheeky({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const BackButton(color: Colors.black),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 90,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            Xfield(text: "Name          :  Name Here"),
            const SizedBox(height: 5),

            Xfield(text: "Email         :  someone@gmail.com"),
            const SizedBox(height: 5),

            Xfield(text: "Mobile       :  Number here"),
            const SizedBox(height: 5),

            Xfield(text: "Address     :  Some where"),
            const SizedBox(height: 5),

            Xfield(text: "Date          :  January 5, 2025"),

            const SizedBox(height: 12),

            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/neck.jpg",
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.blue.shade100,
              child: const Texts(
                text: "Description",
              ),
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: const Text(
                "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(fontSize: 14),
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text("01. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1),

                  ListTile(
                    title: Text("02. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1),

                  ListTile(
                    title: Text("03. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                  Divider(height: 1),

                  ListTile(
                    title: Text("04. Text"),
                    trailing: Icon(Icons.cancel_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 100,width: 400,color: Colors.lightBlue,
              child: Column(
                children: [
                  Texts(text: 'Next Appointments'),SizedBox(height: 10,), 
                  Text("42 jun 2000"),SizedBox(height: 10,),
                  Text('12.00 am'),SizedBox(height: 10,),
                ],
              ),
              ),

            

            const SizedBox(height: 20),
            Primarybutten(title: 'Reschedule', onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Calender()));
            })
          ],
        ),
      ),
    );
  }
}