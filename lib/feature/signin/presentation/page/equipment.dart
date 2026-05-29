import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/step52.dart';
import 'package:flutter/material.dart';

class Equipment extends StatelessWidget {
  Equipment({super.key});

  final List<String> items = ['Horse Shoes', 'Lead', 'Ear Net', 'Hoof Pick'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Equipment',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product name',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Text(
                    'Quantity',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                          ),
                        ),

                        Row(
                          children: [
                            quantityButton(Icons.remove),

                            SizedBox(width: 10),

                            Container(
                              height: 42,
                              width: 70,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text('1', style: TextStyle(fontSize: 18)),
                            ),

                            SizedBox(width: 10),

                            quantityButton(Icons.add),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Primarybutten(title: 'Next', onpress: () {
              Navigator .push(context, MaterialPageRoute(builder: (context)=> Step5Page()));
            }),
            SizedBox(height: 400),
          ],
        ),
      ),
    );
  }

  //custome
  Widget quantityButton(IconData icon) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Icon(icon, size: 18, color: Colors.grey),
    );
  }
}
