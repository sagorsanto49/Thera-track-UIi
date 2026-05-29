import 'package:flutter/material.dart';
import 'package:doctor/core/widget/primarybutten.dart';

class TreatmentScreen extends StatefulWidget {
  const TreatmentScreen({super.key});

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {
  List<int> treatmentList = [0, 1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Treatment",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Heading Row
            const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Treatment Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  flex: 2,
                  child: Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(width: 40),
              ],
            ),

            const SizedBox(height: 15),

            /// Treatment List
            Expanded(
              child: ListView.builder(
                itemCount: treatmentList.length + 1,
                itemBuilder: (context, index) {
                  bool isLast = index == treatmentList.length;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        /// Treatment Name
                        Expanded(
                          flex: 3,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Ventral Curvature",
                              contentPadding:
                                  const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4),
                                borderSide: BorderSide(
                                  color: Colors.blue.shade200,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        /// Price
                        Expanded(
                          flex: 2,
                          child: TextField(
                            keyboardType:
                                TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4),
                                borderSide: BorderSide(
                                  color: Colors.blue.shade200,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        /// Add / Delete Button
                        isLast
                            ? SizedBox(
                                height: 48,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      treatmentList.add(
                                        treatmentList.length,
                                      );
                                    });
                                  },
                                  style:
                                      ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.blue,
                                  ),
                                  child: const Text("Add"),
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    treatmentList.removeAt(
                                      index,
                                    );
                                  });
                                },
                                icon: const Icon(
                                  Icons.close,
                                ),
                              ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      /// Bottom Primary Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(
          16,
          10,
          16,
          20,
        ),
        child: Primarybutten(
          title: "Continue",
          onpress: () {
            // Next Page / Save Action
          },
        ),
      ),
    );
  }
}