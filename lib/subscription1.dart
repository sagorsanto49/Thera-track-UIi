import 'package:doctor/core/widget/primarybutten.dart';
import 'package:flutter/material.dart';

class Subscription1 extends StatelessWidget {
  const Subscription1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Subscription",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.workspace_premium,
                          color: Colors.white,
                        ),
                      ),
                    
                    ],
                  ),
        
                  const SizedBox(height: 15),
        
                  const Text(
                    "01 Month",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                    ),
                  ),
        
                  const Divider(),
        
                  const Row(
                    children: [
                      Icon(Icons.check, color: Colors.blue, size: 18),
                      SizedBox(width: 5),
                      Text("Unlimited Chart"),
                    ],
                  ),
        
                  const SizedBox(height: 15),
        
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "\$99.00",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " /Monthly",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 500,),
            Primarybutten(title: 'Suscribe Now', onpress: (){

            })
          ],
        ),
      ),


    );
  }
}