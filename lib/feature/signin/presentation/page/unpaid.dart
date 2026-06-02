import 'package:flutter/material.dart';
import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/core/widget/text.dart';
import 'package:doctor/core/widget/xfield.dart';
import 'package:doctor/feature/signin/presentation/page/feadback.dart';

class UnPaidScreen extends StatelessWidget {
  const UnPaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final clients = [
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
        elevation: 1,
        title: const Text(
          "UnPaid",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          /// Client List
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.green.shade100,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: clients.length,
              separatorBuilder: (context, index) => Divider(
                height: 1,
                color: Colors.green.shade100,
              ),
              itemBuilder: (context, index) {
                final client = clients[index];

                return ListTile(
                  title: Texts(
                    text: client["name"].toString(),
                  ),
                  subtitle: const Texts(
                    text: "14 Jan 2025",
                    color: Colors.grey,
                  ),
                  trailing: Texts(
                    text: "${client["amount"]} \$",
                    color: Colors.red,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          /// Total Section
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Texts(
                        text: "Total",
                      ),
                      SizedBox(height: 5),
                      Texts(
                        text: "14 Jan 2025",
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                const Texts(
                  text: "750 \$",
                  color: Colors.red,
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          /// Email Section
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xffB8D7F0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                const Xfield(
                  text: "someone@gmail.com",
                ),

                const SizedBox(height: 15),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Texts(
                    text:
                        "Data will be sent to the email above.",
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: 150,
                  child: Primarybutten(
                    title: "Send",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              const FeedbackPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}