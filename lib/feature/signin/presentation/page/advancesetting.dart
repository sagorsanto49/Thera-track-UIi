import 'package:doctor/feature/signin/presentation/controller/advance_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AdvanceSettingsPage extends StatelessWidget {
  AdvanceSettingsPage({super.key});

  final AdvanceSettingsController controller = Get.put(AdvanceSettingsController());

  Widget buildOption({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4.r),
      child: Container(
        height: 56.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(
            color: Color(0xFFA8CCFF),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 1.4.sp,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              width: 22.w,
              height: 22.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(
                  color: Color(0xFF4A90FF),
                ),
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      size: 16.r,
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
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Advance Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: Get.back,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Obx(
          () => Column(
            children: [
              buildOption(
                title: 'Animal',
                isSelected: controller.animalSelected.value,
                onTap: controller.toggleAnimalSelection,
              ),
              SizedBox(height: 12.h),
              buildOption(
                title: 'Human',
                isSelected: controller.humanSelected.value,
                onTap: controller.goToHuman,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.r),
        child: SizedBox(
          height: 50.h,
          child: ElevatedButton(
            onPressed: controller.continueToPaid,
            child: Text("Continue"),
          ),
        ),
      ),
    );
  }
}
