import 'package:doctor/feature/signin/presentation/page/step62.dart';
import 'package:flutter/material.dart';

class Step6Page extends StatelessWidget {
  const Step6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18,
        ),
        centerTitle: true,
        title: const Text(
          "Step 6",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// LOGO
            Center(
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue),
                    ),
                    child: const Icon(
                      Icons.pets,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "CHEEKY CHARTING",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// USER INFO
            const InfoRow(
              title: "Name",
              value: "Name Here",
            ),

            const InfoRow(
              title: "Email",
              value: "someone@gmail.com",
            ),

            const InfoRow(
              title: "Mobile",
              value: "Number here",
            ),

            const InfoRow(
              title: "Address",
              value: "Some where",
            ),

            const SizedBox(height: 20),

            /// PET INFO
            const InfoRow(
              title: "Horse",
              value: "Horse Name",
            ),

            const InfoRow(
              title: "Age",
              value: "5 years",
            ),

            const InfoRow(
              title: "Breed",
              value: "Number here",
            ),

            const InfoRow(
              title: "Gender",
              value: "Male",
            ),

            const InfoRow(
              title: "Height",
              value: "5",
            ),

            const InfoRow(
              title: "Color",
              value: "Black",
            ),

            const SizedBox(height: 20),

            /// IMAGE
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.pets,
                  size: 70,
                  color: Colors.brown,
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// DESCRIPTION
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),

              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                ),
                borderRadius: BorderRadius.circular(4),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "1. Lorem ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 12),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "2. Lorem ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 12),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "3. Lorem ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: TextStyle(fontSize: 12),
            ),

            const SizedBox(height: 20),

            /// ADD POINT
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),

              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                ),
                borderRadius: BorderRadius.circular(4),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Add point",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  buildPoint("01. Text"),
                  buildPoint("02. Text"),
                  buildPoint("03. Text"),
                  buildPoint("04. Text"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// PRICE SECTION
            const PriceRow(
              title: "Caps",
              price: "20\$",
            ),

            const PriceRow(
              title: "Cap Fragment",
              price: "30\$",
            ),

            const PriceRow(
              title: "Overbite",
              price: "25\$",
            ),

            const PriceRow(
              title: "Cap Fragment",
              price: "100\$",
            ),

            const Divider(),

            const PriceRow(
              title: "Total",
              price: "175\$",
            ),

            const PriceRow(
              title: "Discount",
              price: "00\$",
            ),

            const Divider(),

            const PriceRow(
              title: "Grand Total",
              price: "225\$",
            ),

            const SizedBox(height: 20),

            /// BUTTONS
            Row(
              children: [

                Expanded(
                  child: buildBlueButton(
                    context: context,
                    icon: Icons.medical_services,
                    text: "Make Appointment",
                  ),
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: buildBlueButton(
                    context: context,
                    icon: Icons.send,
                    text: "Send",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [

                Expanded(
                  child: buildBlueButton(
                    context: context,
                    icon: Icons.save,
                    text: "Save",
                  ),
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: buildBlueButton(
                    context: context,
                    icon: Icons.print,
                    text: "Print",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// CHECKBOX
            Row(
              children: [

                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),

                const Text("Paid"),

                const SizedBox(width: 20),

                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),

                const Text(
                  "Unpaid",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// FINISHED BUTTON
            SizedBox(
              width: double.infinity,
              height: 45,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                onPressed: () {},

                child: const Text(
                  "Finished",
                  style: TextStyle(
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

  /// POINT BOX
  static Widget buildPoint(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),

      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),

      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue.shade100,
        ),
        borderRadius: BorderRadius.circular(4),
      ),

      child: Row(
        children: [

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),

          const Icon(
            Icons.remove_red_eye_outlined,
            size: 18,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  /// BLUE BUTTON
  Widget buildBlueButton({
    required BuildContext context,
    required IconData icon,
    required String text,
  }) {
    return SizedBox(
      height: 40,

      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Step62(),
            ),
          );
        },

        icon: Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),

        label: Text(
          text,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

/// INFO ROW
class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const InfoRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),

      child: Row(
        children: [

          SizedBox(
            width: 80,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),

          const Text(":"),

          const SizedBox(width: 15),

          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// PRICE ROW
class PriceRow extends StatelessWidget {
  final String title;
  final String price;

  const PriceRow({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),

      child: Row(
        children: [

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),

          const Text(":"),

          const SizedBox(width: 15),

          Text(
            price,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}