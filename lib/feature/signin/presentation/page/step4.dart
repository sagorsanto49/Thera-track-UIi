import 'package:doctor/core/widget/headertext.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/step4home.dart';
import 'package:doctor/feature/signin/presentation/page/step5.dart';
import 'package:doctor/feature/signin/presentation/page/texthome.dart';
import 'package:flutter/material.dart';

class Step4 extends StatelessWidget {
  const Step4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          'Step 4',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headertext(
              title: 'Select the area of Concern',
              subtitle:
              'Select one or more areas. If unsure select Other',
            ),

            const SizedBox(height: 20),

            /// Upload Box
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud_upload_outlined,
                      size: 40,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Click to browse or\n drag and drop your files',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// Tags
            Row(
              children: [
                Expanded(child: Xfield(text: 'Joints')),
                const SizedBox(width: 10),
                Expanded(child: Xfield(text: 'Back')),
                const SizedBox(width: 10),
                Expanded(child: Xfield(text: 'Paws')),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(child: Xfield(text: 'Muscles')),
                const SizedBox(width: 10),
                Expanded(child: Xfield(text: 'Neck')),
                const SizedBox(width: 10),
                Expanded(child: Xfield(text: 'Ears')),
              ],
            ),

            const SizedBox(height: 20),

            /// Add Area
            Row(
              children: [
                Expanded(
                  child: Xfield(text: '------'),
                ),
                const SizedBox(width: 10),

                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Step4home()));
                    },
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Description Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.03),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Texthome()));
                          },
                          child
                          : const Texts(text: 'Description')),
                      const Icon(
                        Icons.info_outline,
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Xfield(text: 'text'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            /// Additional Notes Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.03),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: const [
                      Texts(text: 'Description'),
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Xfield(text: 'text'),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Primarybutten(
              title: 'Next',
              onpress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Step5()));
              },
            ),
          ],
        ),
      ),
    );
  }
}