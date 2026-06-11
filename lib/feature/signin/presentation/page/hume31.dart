import 'package:flutter/material.dart';

class Step3Page extends StatelessWidget {
  const Step3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Step 3",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select the Area of Concern",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Select one or more areas. If unsure select Other.",
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 15),

            // IMAGE
            Center(
              child: Column(
                children: [
                  Container(
                    width: 145,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/body.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff3399FF),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Change Image",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                areaButton("Head"),
                const SizedBox(width: 5),
                selectedAreaButton("Neck"),
                const SizedBox(width: 5),
                selectedAreaButton("Back"),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                areaButton("Shoulders"),
                const SizedBox(width: 5),
                areaButton("Buttocks"),
                const SizedBox(width: 5),
                areaButton("Thighs"),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Expanded(child: SizedBox()),
                Expanded(
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff3399FF),
                      ),
                      onPressed: () {},
                      child: const Text("Add"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // DESCRIPTION
            buildCard(
              title: "Description",
              icon: Icons.check,
              child: const Text(
                "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // ADD POINT
            buildCard(
              title: "Add point",
              icon: Icons.add_box_outlined,
              child: Column(
                children: [
                  pointTile("01. Text"),
                  pointTile("02. Text"),
                  pointTile("03. Text"),
                  pointTile("04. Text"),
                ],
              ),
            ),

            const SizedBox(height: 18),

            SizedBox(
              width: double.infinity,
              height: 42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3399FF),
                ),
                onPressed: () {},
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildCard({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffA9D1F5),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            color: const Color(0xffD8ECFF),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  icon,
                  size: 18,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: child,
          ),
        ],
      ),
    );
  }

  static Widget pointTile(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffA9D1F5),
        ),
        color: const Color(0xffF7FBFF),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          ),
          const Icon(
            Icons.cancel_outlined,
            size: 16,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  static Widget areaButton(String text) {
    return Expanded(
      child: Container(
        height: 38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 11,
          ),
        ),
      ),
    );
  }

  static Widget selectedAreaButton(String text) {
    return Expanded(
      child: Container(
        height: 38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff3399FF),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}