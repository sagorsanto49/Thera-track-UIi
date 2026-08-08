import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/controller/treatment_controller.dart';
import 'package:doctor/feature/signin/presentation/page/advancesetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TreatmentScreen extends StatelessWidget {
  TreatmentScreen({super.key});

  final TreatmentController controller = Get.put(TreatmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Treatment",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Treatment Name",
                    style: TextStyle(
                      fontSize: 1.6.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 1.6.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: 40.w),
              ],
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.treatmentList.length + 1,
                  itemBuilder: (context, index) {
                    final isLast = index == controller.treatmentList.length;
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Ventral Curvature",
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 14,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade200,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 14,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade200,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          isLast
                              ? SizedBox(
                                  height: 48.h,
                                  child: ElevatedButton(
                                    onPressed: controller.addTreatmentRow,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text("Add"),
                                  ),
                                )
                              : IconButton(
                                  onPressed: () => controller.removeTreatmentRow(index),
                                  icon: Icon(Icons.close),
                                ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16, 10, 16, 20),
        child: Primarybutten(
          title: "Continue",
          onpress: () => Get.to(() => AdvanceSettingsPage()),
        ),
      ),
    );
  }
}
