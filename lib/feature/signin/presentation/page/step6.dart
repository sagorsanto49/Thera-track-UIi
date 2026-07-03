import 'package:doctor/feature/signin/presentation/page/step62.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step6Page extends StatelessWidget {
  const Step6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18.r,
        ),
        centerTitle: true,
        title: Text(
          "Step 6",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.r),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// LOGO
            Center(
              child: Column(
                children: [
                  Container(
                    height: 90.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Icon(
                      Icons.pets,
                      size: 50.r,
                      color: Colors.blue,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  Text(
                    "CHEEKY CHARTING",
                    style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h),

            /// USER INFO
            InfoRow(
              title: "Name",
              value: "Name Here",
            ),

            InfoRow(
              title: "Email",
              value: "someone@gmail.com",
            ),

            InfoRow(
              title: "Mobile",
              value: "Number here",
            ),

            InfoRow(
              title: "Address",
              value: "Some where",
            ),

            SizedBox(height: 20.h),

            /// PET INFO
            InfoRow(
              title: "Horse",
              value: "Horse Name",
            ),

            InfoRow(
              title: "Age",
              value: "5 years",
            ),

            InfoRow(
              title: "Breed",
              value: "Number here",
            ),

            InfoRow(
              title: "Gender",
              value: "Male",
            ),

            InfoRow(
              title: "Height",
              value: "5",
            ),

            InfoRow(
              title: "Color",
              value: "Black",
            ),

            SizedBox(height: 20.h),

            /// IMAGE
            Center(
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Icon(
                  Icons.pets,
                  size: 70.r,
                  color: Colors.brown,
                ),
              ),
            ),

            SizedBox(height: 20.h),

            /// DESCRIPTION
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                ),
                borderRadius: BorderRadius.circular(4.r),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Text(
                    "1. Lorem ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 1.2.sp),
                  ),

                  SizedBox(height: 5.h),

                  Text(
                    "2. Lorem ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 1.2.sp),
                  ),

                  SizedBox(height: 5.h),

                  Text(
                    "3. Lorem ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 1.2.sp),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.h),

            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: TextStyle(fontSize: 1.2.sp),
            ),

            SizedBox(height: 20.h),

            /// ADD POINT
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade100,
                ),
                borderRadius: BorderRadius.circular(4.r),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Add point",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  buildPoint("01. Text"),
                  buildPoint("02. Text"),
                  buildPoint("03. Text"),
                  buildPoint("04. Text"),
                ],
              ),
            ),

            SizedBox(height: 20.h),

            /// PRICE SECTION
            PriceRow(
              title: "Caps",
              price: "20\$",
            ),

            PriceRow(
              title: "Cap Fragment",
              price: "30\$",
            ),

            PriceRow(
              title: "Overbite",
              price: "25\$",
            ),

            PriceRow(
              title: "Cap Fragment",
              price: "100\$",
            ),

            Divider(),

            PriceRow(
              title: "Total",
              price: "175\$",
            ),

            PriceRow(
              title: "Discount",
              price: "00\$",
            ),

            Divider(),

            PriceRow(
              title: "Grand Total",
              price: "225\$",
            ),

            SizedBox(height: 20.h),

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

                SizedBox(width: 8.w),

                Expanded(
                  child: buildBlueButton(
                    context: context,
                    icon: Icons.send,
                    text: "Send",
                  ),
                ),
              ],
            ),

            SizedBox(height: 8.h),

            Row(
              children: [

                Expanded(
                  child: buildBlueButton(
                    context: context,
                    icon: Icons.save,
                    text: "Save",
                  ),
                ),

                SizedBox(width: 8.w),

                Expanded(
                  child: buildBlueButton(
                    context: context,
                    icon: Icons.print,
                    text: "Print",
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            /// CHECKBOX
            Row(
              children: [

                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),

                Text("Paid"),

                SizedBox(width: 20.w),

                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),

                Text(
                  "Unpaid",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            /// FINISHED BUTTON
            SizedBox(
              width: double.infinity,
              height: 45.h,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                onPressed: () {},

                child: Text(
                  "Finished",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  /// POINT BOX
  static Widget buildPoint(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),

      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),

      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue.shade100,
        ),
        borderRadius: BorderRadius.circular(4.r),
      ),

      child: Row(
        children: [

          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 1.2.sp,
              ),
            ),
          ),

          Icon(
            Icons.remove_red_eye_outlined,
            size: 18.r,
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
      height: 40.h,

      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Step62(),
            ),
          );
        },

        icon: Icon(
          icon,
          size: 16.r,
          color: Colors.white,
        ),

        label: Text(
          text,
          style: TextStyle(fontSize: 1.1.sp,
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
      padding: EdgeInsets.only(bottom: 10.h),

      child: Row(
        children: [

          SizedBox(
            width: 80.w,
            child: Text(
              title,
              style: TextStyle(fontSize: 1.3.sp,
              ),
            ),
          ),

          Text(":"),

          SizedBox(width: 15.w),

          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 1.3.sp,
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
      padding: EdgeInsets.only(bottom: 10.h),

      child: Row(
        children: [

          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 1.3.sp,
              ),
            ),
          ),

          Text(":"),

          SizedBox(width: 15.w),

          Text(
            price,
            style: TextStyle(fontSize: 1.3.sp,
            ),
          ),
        ],
      ),
    );
  }
}
