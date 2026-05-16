// import 'package:flutter/material.dart';

// class Step62 extends StatelessWidget {
//   const Step62({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("dkhjfik"),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Step62 extends StatefulWidget {
  const Step62({super.key});

  @override
  State<Step62> createState() => Step62State();
}

class Step62State extends State<Step62> {
  DateTime selectedDate = DateTime(2025, 1, 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,

        leading: const Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: Colors.black,
        ),

        title: const Text(
          "Step 6",
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

            /// DATE
            Row(
              children: [

                const Text(
                  "January 24, 2025",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(width: 10),

                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.calendar_today,
                    size: 18,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            /// CALENDAR
            Container(
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: const Color(0xffdfe9f2),
                borderRadius: BorderRadius.circular(2),
              ),

              child: Column(
                children: [

                  /// HEADER
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: const [

                      Icon(Icons.chevron_left),

                      Text(
                        "January 2025",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Icon(Icons.chevron_right),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Divider(),

                  /// DAYS NAME
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,

                    children: const [
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                      DayName("DAY"),
                    ],
                  ),

                  const SizedBox(height: 15),

                  /// DATES
                  buildDateRow([
                    "30",
                    "31",
                    "01",
                    "02",
                    "03",
                    "04",
                    "05"
                  ]),

                  buildDateRow([
                    "06",
                    "07",
                    "08",
                    "09",
                    "10",
                    "11",
                    "12"
                  ]),

                  buildDateRow([
                    "13",
                    "14",
                    "15",
                    "16",
                    "17",
                    "18",
                    "19"
                  ]),

                  buildDateRow([
                    "20",
                    "21",
                    "22",
                    "23",
                    "24",
                    "25",
                    "26"
                  ], selectedIndex: 4),

                  buildDateRow([
                    "27",
                    "28",
                    "29",
                    "30",
                    "31",
                    "01",
                    "02"
                  ]),
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// TIME PICKER
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),

              decoration: BoxDecoration(
                color: const Color(0xffdfe9f2),
                borderRadius: BorderRadius.circular(2),
              ),

              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,

                children: [

                  /// AM PM
                  Column(
                    children: const [

                      Text(
                        "AM",
                        style: TextStyle(fontSize: 24),
                      ),

                      SizedBox(height: 15),

                      Text(
                        "PM",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),

                  Container(
                    height: 90,
                    width: 1,
                    color: Colors.blue.shade200,
                  ),

                  /// HOURS
                  Column(
                    children: const [

                      Text(
                        "11",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "01",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    height: 90,
                    width: 1,
                    color: Colors.blue.shade200,
                  ),

                  /// MINUTES
                  Column(
                    children: const [

                      Text(
                        "59",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "00",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "01",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// EVENT BOX
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade300,
                ),
              ),

              child: Column(
                children: [

                  /// ALL DAY
                  Padding(
                    padding: const EdgeInsets.all(8),

                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        const Text(
                          "All-Day",
                          style: TextStyle(fontSize: 18),
                        ),

                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius:
                                BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(
                    height: 1,
                    color: Colors.grey.shade400,
                  ),

                  /// START
                  buildTimeRow(
                    title: "Start",
                  ),

                  Divider(
                    height: 1,
                    color: Colors.grey.shade400,
                  ),

                  /// END
                  buildTimeRow(
                    title: "End",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// REMINDER
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 14,
              ),

              decoration: BoxDecoration(
                color: const Color(0xffdfe9f2),
                borderRadius: BorderRadius.circular(2),
              ),

              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: const [

                  Text(
                    "Reminder",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),

                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),

            const SizedBox(height: 40),

            /// DONE BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                onPressed: () {},

                child: const Text(
                  "Done",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// DATE ROW
  Widget buildDateRow(
    List<String> dates, {
    int selectedIndex = -1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround,

        children: List.generate(
          dates.length,
          (index) {
            bool isSelected =
                index == selectedIndex;

            return Container(
              height: 35,
              width: 35,
              alignment: Alignment.center,

              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.blue
                    : Colors.transparent,

                shape: BoxShape.circle,
              ),

              child: Text(
                dates[index],
                style: TextStyle(
                  color: isSelected
                      ? Colors.white
                      : Colors.black87,

                  fontSize: 16,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// TIME ROW
  Widget buildTimeRow({
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8),

      child: Row(
        children: [

          SizedBox(
            width: 80,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 10,
              ),

              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(2),
              ),

              child: const Text(
                "24 Jan, 2025",
                textAlign: TextAlign.center,
              ),
            ),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 10,
              ),

              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(2),
              ),

              child: const Text(
                "12:00AM",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// DAY NAME
class DayName extends StatelessWidget {
  final String text;

  const DayName(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 10,
        color: Colors.grey,
      ),
    );
  }
}