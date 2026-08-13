import 'package:doctor/core/widget/primarybutten.dart';
import 'package:doctor/feature/signin/presentation/controller/treatment_controller.dart';
import 'package:doctor/feature/signin/presentation/page/advancesetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TreatmentScreen extends StatelessWidget {
  TreatmentScreen({super.key});

  final TreatmentController controller = Get.put(TreatmentController());

  static const Color primary = Color(0xff2563EB);
  static const Color darkText = Color(0xff172033);
  static const Color greyText = Color(0xff64748B);
  static const Color background = Color(0xffF6F8FC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      // =========================================================
      // APP BAR
      // =========================================================
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: darkText,
            size: 19.sp,
          ),
        ),

        title: Text(
          "Treatment",
          style: TextStyle(
            color: darkText,
            fontSize: 19.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      // =========================================================
      // BODY
      // =========================================================
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(
                16.w,
                20.h,
                16.w,
                25.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // =================================================
                  // PAGE HEADER
                  // =================================================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        height: 46.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                          color: primary.withOpacity(.10),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Icon(
                          Icons.medical_services_outlined,
                          color: primary,
                          size: 24.sp,
                        ),
                      ),

                      SizedBox(width: 12.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Add Treatment",
                              style: TextStyle(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w700,
                                color: darkText,
                              ),
                            ),

                            SizedBox(height: 3.h),

                            Text(
                              "Add the treatment details below",
                              style: TextStyle(
                                fontSize: 12.5.sp,
                                color: greyText,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 22.h),

                  // =================================================
                  // SECTION CARD
                  // =================================================
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(14.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.r),
                      border: Border.all(
                        color: const Color(0xffE8EDF5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.035),
                          blurRadius: 18,
                          offset: const Offset(0, 7),
                        ),
                      ],
                    ),

                    child: Column(
                      children: [

                        // ===========================================
                        // TABLE HEADER
                        // ===========================================
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 12.h,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xffF3F7FF),
                            borderRadius: BorderRadius.circular(12.r),
                          ),

                          child: Row(
                            children: [

                              Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.medical_information_outlined,
                                      size: 16.sp,
                                      color: primary,
                                    ),
                                    SizedBox(width: 6.w),
                                    Text(
                                      "Treatment",
                                      style: TextStyle(
                                        fontSize: 12.5.sp,
                                        fontWeight: FontWeight.w700,
                                        color: darkText,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Price",
                                  style: TextStyle(
                                    fontSize: 12.5.sp,
                                    fontWeight: FontWeight.w700,
                                    color: darkText,
                                  ),
                                ),
                              ),

                              SizedBox(width: 42.w),
                            ],
                          ),
                        ),

                        SizedBox(height: 12.h),

                        // ===========================================
                        // TREATMENT LIST
                        // ===========================================
                        Obx(
                          () => ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount:
                                controller.treatmentList.length + 1,

                            separatorBuilder: (_, __) =>
                                SizedBox(height: 10.h),

                            itemBuilder: (context, index) {
                              final isLast =
                                  index ==
                                      controller.treatmentList.length;

                              return _buildTreatmentRow(
                                index: index,
                                isLast: isLast,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // ===========================================================
      // BOTTOM CONTINUE
      // ===========================================================
      bottomNavigationBar: Container(
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
              color: Colors.black.withOpacity(.06),
              blurRadius: 18,
              offset: const Offset(0, -5),
            ),
          ],
        ),

        child: SafeArea(
          top: false,
          child: SizedBox(
            height: 52.h,
            child: Primarybutten(
              title: "Continue",
              onpress: () {
                Get.to(
                  () => AdvanceSettingsPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 300),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // =============================================================
  // TREATMENT ROW
  // =============================================================

  Widget _buildTreatmentRow({
    required int index,
    required bool isLast,
  }) {
    return Container(
      padding: EdgeInsets.all(8.r),

      decoration: BoxDecoration(
        color: const Color(0xffFAFBFD),
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: const Color(0xffE8EDF5),
        ),
      ),

      child: Row(
        children: [

          // =======================================================
          // TREATMENT NAME
          // =======================================================

          Expanded(
            flex: 3,
            child: _buildInput(
              hint: "Treatment name",
              icon: Icons.healing_outlined,
            ),
          ),

          SizedBox(width: 8.w),

          // =======================================================
          // PRICE
          // =======================================================

          Expanded(
            flex: 2,
            child: _buildInput(
              hint: "Price",
              icon: Icons.currency_exchange_rounded,
              keyboardType: TextInputType.number,
            ),
          ),

          SizedBox(width: 8.w),

          // =======================================================
          // ADD / DELETE
          // =======================================================

          if (isLast)
            _buildAddButton()
          else
            _buildDeleteButton(index),
        ],
      ),
    );
  }

  // =============================================================
  // INPUT FIELD
  // =============================================================

  Widget _buildInput({
    required String hint,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return TextField(
      keyboardType: keyboardType,

      style: TextStyle(
        fontSize: 12.5.sp,
        color: darkText,
        fontWeight: FontWeight.w500,
      ),

      decoration: InputDecoration(
        hintText: hint,

        hintStyle: TextStyle(
          fontSize: 12.sp,
          color: const Color(0xffA0A9B8),
        ),

        prefixIcon: Icon(
          icon,
          size: 17.sp,
          color: const Color(0xff94A3B8),
        ),

        prefixIconConstraints: BoxConstraints(
          minWidth: 40.w,
        ),

        filled: true,
        fillColor: Colors.white,

        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 14.h,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.r),
          borderSide: const BorderSide(
            color: Color(0xffE1E7EF),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.r),
          borderSide: const BorderSide(
            color: primary,
            width: 1.4,
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // =============================================================
  // ADD BUTTON
  // =============================================================

  Widget _buildAddButton() {
    return Material(
      color: Colors.transparent,

      child: InkWell(
        onTap: controller.addTreatmentRow,
        borderRadius: BorderRadius.circular(11.r),

        child: Container(
          height: 48.h,
          width: 48.w,

          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff3B82F6),
                Color(0xff2563EB),
              ],
            ),
            borderRadius: BorderRadius.circular(11.r),
            boxShadow: [
              BoxShadow(
                color: primary.withOpacity(.20),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),

          child: Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 25.sp,
          ),
        ),
      ),
    );
  }

  // =============================================================
  // DELETE BUTTON
  // =============================================================

  Widget _buildDeleteButton(int index) {
    return Material(
      color: Colors.transparent,

      child: InkWell(
        onTap: () {
          controller.removeTreatmentRow(index);
        },

        borderRadius: BorderRadius.circular(11.r),

        child: Container(
          height: 48.h,
          width: 48.w,

          decoration: BoxDecoration(
            color: const Color(0xffFFF3F3),
            borderRadius: BorderRadius.circular(11.r),
            border: Border.all(
              color: const Color(0xffFFD8D8),
            ),
          ),

          child: Icon(
            Icons.delete_outline_rounded,
            color: const Color(0xffEF4444),
            size: 21.sp,
          ),
        ),
      ),
    );
  }
}