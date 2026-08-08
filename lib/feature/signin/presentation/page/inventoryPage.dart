import 'package:doctor/feature/signin/presentation/controller/inventory_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InventoryPage extends StatelessWidget {
  InventoryPage({super.key});

  final InventoryController controller = Get.put(InventoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Inventory"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Product name",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Price per one",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Quantity",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(width: 40.w),
              ],
            ),

            SizedBox(height: 12.h),

            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    final item = controller.items[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 40.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Text(item['name'] ?? ''),
                            ),
                          ),

                          SizedBox(width: 6.w),

                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 40.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Text(item['price'] ?? ''),
                            ),
                          ),

                          SizedBox(width: 6.w),

                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 40.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Text(item['qty'] ?? ''),
                            ),
                          ),

                          IconButton(
                            onPressed: () => controller.removeItem(index),
                            icon: Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton.icon(
                onPressed: controller.addItem,
                icon: Icon(Icons.add),
                label: Text(
                  "Add New",
                  style: TextStyle(
                    fontSize: 1.5.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  elevation: 3,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
