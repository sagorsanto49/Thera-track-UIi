import 'package:doctor/feature/signin/presentation/page/advancesetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor/core/widget/primarybutten.dart';

class TreatmentScreen extends StatefulWidget {
  const TreatmentScreen({super.key});

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {
  List<int> treatmentList = [0, 1, 2, 3, 4];

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
            /// Heading Row
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Treatment Name",
                    style: TextStyle(fontSize: 1.6.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                Expanded(
                  flex: 2,
                  child: Text(
                    "Price",
                    style: TextStyle(fontSize: 1.6.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(width: 40.w),
              ],
            ),

            SizedBox(height: 15.h),

            /// Treatment List
            Expanded(
              child: ListView.builder(
                itemCount: treatmentList.length + 1,
                itemBuilder: (context, index) {
                  bool isLast = index == treatmentList.length;

                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Row(
                      children: [
                        /// Treatment Name
                        Expanded(
                          flex: 3,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Ventral Curvature",
                              contentPadding:
                                  EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.r),
                                borderSide: BorderSide(
                                  color: Colors.blue.shade200,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.r),
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

                        /// Price
                        Expanded(
                          flex: 2,
                          child: TextField(
                            keyboardType:
                                TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 14,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.r),
                                borderSide: BorderSide(
                                  color: Colors.blue.shade200,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.r),
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

                        /// Add / Delete Button
                        isLast
                            ? SizedBox(
                                height: 48.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      treatmentList.add(
                                        treatmentList.length,
                                      );
                                    });
                                  },
                                  style:
                                      ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.blue,
                                  ),
                                  child: Text("Add"),
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    treatmentList.removeAt(
                                      index,
                                    );
                                  });
                                },
                                icon: Icon(
                                  Icons.close,
                                ),
                              ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      /// Bottom Primary Button
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(
          16,
          10,
          16,
          20,
        ),
        child: Primarybutten(
          title: "Continue",
          onpress: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AdvanceSettingsPage()));
            
          },
        ),
      ),
    );
  }
}
