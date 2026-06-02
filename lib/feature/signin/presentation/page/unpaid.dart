import 'package:doctor/feature/signin/presentation/page/feadback.dart';
import 'package:flutter/material.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/core/widget/text.dart';

class UnPaidScreen extends StatelessWidget {
  const UnPaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> clients = [
      {"name": "Client 01", "amount": 150},
      {"name": "Client 02", "amount": 150},
      {"name": "Client 03", "amount": 150},
      {"name": "Client 04", "amount": 150},
      {"name": "Client 05", "amount": 150},
    ];

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("UnPaid"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            /// Client List
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green.shade100,
                      ),
                    ),
                    child: Column(
                      children: clients.map((client) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.green.shade100,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Texts(
                                      text: client["name"],
                                    ),

                                    const SizedBox(height: 6),

                                    Texts(
                                      text: "14 jan 2025",
                                      // fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),

                              Texts(
                                text:
                                    "${client["amount"]} \$",
                                color: Colors.red,
                                // fontSize: 18,
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Total
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: const [
                              Texts(
                                text: "Total",
                              ),

                              SizedBox(height: 6),

                              Texts(
                                text: "14 jan 2025",
                                // fontSize: 12,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),

                        const Texts(
                          text: "750 \$",
                          color: Colors.red,
                          // fontSize: 22,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                  /// Email Section
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xffB8D7F0),
                      borderRadius:
                          BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        const Xfield(
                          text:
                              "someone@gmail.com",
                        ),

                        const SizedBox(height: 18),

                        const Align(
                          alignment:
                              Alignment.centerLeft,
                          child: Texts(
                            text:
                                "Data will be sent to the email above.",
                            // fontSize: 13,
                          ),
                        ),

                        const SizedBox(height: 20),

                        SizedBox(
                          width: 140,
                          child: Primarybutten(
                            title: "Send", onpress: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()));
                              },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}