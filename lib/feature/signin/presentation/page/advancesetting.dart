import 'package:flutter/material.dart';

class AdvanceSettingsPage extends StatefulWidget {
  const AdvanceSettingsPage({super.key});

  @override
  State<AdvanceSettingsPage> createState() => _AdvanceSettingsPageState();
}

class _AdvanceSettingsPageState extends State<AdvanceSettingsPage> {
  bool animalSelected = false;
  bool humanSelected = true;

  Widget buildOption({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: const Color(0xFFA8CCFF),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: const Color(0xFF4A90FF),
                ),
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 16,
                      color: Color(0xFF4A90FF),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.black12,
        title: const Text(
          'Advance Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            buildOption(
              title: 'Animal',
              isSelected: animalSelected,
              onTap: () {
                setState(() {
                  animalSelected = !animalSelected;
                });
              },
            ),

            const SizedBox(height: 12),

            buildOption(
              title: 'Human',
              isSelected: humanSelected,
              onTap: () {
                setState(() {
                  humanSelected = !humanSelected;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}