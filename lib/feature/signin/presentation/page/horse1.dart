import 'package:doctor/feature/signin/presentation/page/horse2.dart';
import 'package:flutter/material.dart';

class Horse1 extends StatelessWidget {
  const Horse1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> horses = [
      "Boss",
      "Horse Name 2",
      "Horse Name 3",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Horse"),
      ),
      body: ListView.builder(
        itemCount: horses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(horses[index]),
            onTap: () {
              if (horses[index] == "Boss") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Horse2(),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}