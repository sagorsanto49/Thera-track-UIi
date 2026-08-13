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
      backgroundColor: const Color(0xffF5F7FB),

      // ================= APP BAR =================
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.sp,
            color: const Color(0xff1E293B),
          ),
        ),

        title: Text(
          "Treatment",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff0F172A),
          ),
        ),
      ),

      // ================= BODY =================
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 18.h, 16.w, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ================= TITLE =================
            Text(
              "Add Treatments",
              style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff0F172A),
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              "Add treatment name and price below",
              style: TextStyle(
                fontSize: 13.sp,
                color: const Color(0xff64748B),
              ),
            ),

            SizedBox(height: 20.h),

            // ================= TABLE HEADER =================
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
                vertical: 13.h,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffEAF2FF),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [

                  Expanded(
                    flex: 3,
                    child: Text(
                      "Treatment Name",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff2563EB),
                      ),
                    ),
                  ),

                  SizedBox(width: 10.w),

                  Expanded(
                    flex: 2,
                    child: Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff2563EB),
                      ),
                    ),
                  ),

                  SizedBox(width: 45.w),
                ],
              ),
            ),

            SizedBox(height: 12.h),

            // ================= TREATMENT LIST =================
            Expanded(
              child: Obx(
                () => ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.treatmentList.length + 1,
                  itemBuilder: (context, index) {

                    final isLast =
                        index == controller.treatmentList.length;

                    return Container(
                      margin: EdgeInsets.only(bottom: 12.h),
                      padding: EdgeInsets.all(10.r),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.r),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),

                      child: Row(
                        children: [

                          // ================= NAME =================
                          Expanded(
                            flex: 3,
                            child: _buildTextField(
                              hintText: "Ventral Curvature",
                            ),
                          ),

                          SizedBox(width: 10.w),

                          // ================= PRICE =================
                          Expanded(
                            flex: 2,
                            child: _buildTextField(
                              hintText: "Price",
                              keyboardType: TextInputType.number,
                            ),
                          ),

                          SizedBox(width: 8.w),

                          // ================= ADD / DELETE =================
                          isLast
                              ? _buildAddButton()
                              : _buildDeleteButton(index),
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

      // ================= CONTINUE BUTTON =================
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(
            16.w,
            12.h,
            16.w,
            16.h,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 15,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: SizedBox(
            height: 52.h,
            child: Primarybutten(
              title: "Continue",
              onpress: () {
                Get.to(
                  () => AdvanceSettingsPage(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // TEXT FIELD
  // ============================================================

  Widget _buildTextField({
    required String hintText,
    TextInputType? keyboardType,
  }) {
    return TextField(
      keyboardType: keyboardType,

      style: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
        color: const Color(0xff1E293B),
      ),

      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: TextStyle(
          fontSize: 13.sp,
          color: const Color(0xff94A3B8),
        ),

        filled: true,
        fillColor: const Color(0xffF8FAFC),

        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 14.h,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: Color(0xffE2E8F0),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: const Color(0xff2563EB),
            width: 1.5,
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }

  // ============================================================
  // ADD BUTTON
  // ============================================================

  Widget _buildAddButton() {
    return SizedBox(
      height: 46.h,
      width: 52.w,
      child: ElevatedButton(
        onPressed: controller.addTreatmentRow,

        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff2563EB),
          foregroundColor: Colors.white,

          elevation: 0,

          padding: EdgeInsets.zero,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),

        child: Icon(
          Icons.add_rounded,
          size: 25.sp,
        ),
      ),
    );
  }

  // ============================================================
  // DELETE BUTTON
  // ============================================================

  Widget _buildDeleteButton(int index) {
    return Container(
      height: 42.h,
      width: 42.w,

      decoration: BoxDecoration(
        color: const Color(0xffFEF2F2),
        borderRadius: BorderRadius.circular(10.r),
      ),

      child: IconButton(
        onPressed: () {
          controller.removeTreatmentRow(index);
        },

        padding: EdgeInsets.zero,

        icon: Icon(
          Icons.delete_outline_rounded,
          color: const Color(0xffEF4444),
          size: 21.sp,
        ),
      ),
    );
  }
}