import 'package:doctor/feature/signin/presentation/page/step6.dart';
import 'package:flutter/material.dart';

class Step5Page extends StatelessWidget {
  const Step5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18,
        ),
        title: const Text(
          'Step 5',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
     
     
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 10),

            // Therapy List
            const ServiceRow(
              title: 'Cryotherapy',
              price: '20\$',
            ),
            const SizedBox(height: 18),

            const ServiceRow(
              title: 'Massage Therapy',
              price: '30\$',
            ),
            const SizedBox(height: 18),

            const ServiceRow(
              title: 'Acupuncture',
              price: '25\$',
            ),
            const SizedBox(height: 18),

            const ServiceRow(
              title: 'Heat and Cold Therapy',
              price: '100\$',
            ),

            const SizedBox(height: 12),

            const Divider(
              color: Colors.black54,
              thickness: 1,
            ),

            const SizedBox(height: 12),

            const ServiceRow(
              title: 'Full Cost',
              price: '175\$',
            ),

            const SizedBox(height: 16),

            // Discount Box
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffF1F8FF),
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Discount',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '5\$',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const ServiceRow(
              title: 'Final Cost',
              price: '170\$',
            ),

            const Spacer(),

            // Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Step6Page()));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ServiceRow extends StatelessWidget {
  final String title;
  final String price;

  const ServiceRow({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
        const Text(
          ':',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: 20),
        Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}