import 'package:doctor/feature/signin/presentation/page/step4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step3 extends StatelessWidget {
  const Step3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Step 3',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),


      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.r),
            color: Colors.blueGrey.shade200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Horse',
                      style: TextStyle(fontSize: 1.6.sp),
                    ),
                    Row(
                      children: [
                        InkWell( onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Step4()));
                        },

                          child: Text(
                            'Add Horse',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Icon(Icons.add, color: Colors.blue, size: 18.r),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Somethings',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),


          // List Section
          Expanded(
            child: ListView(
              children:  [
                HorseItem(name: 'Amigo', date: '15 Jan, 2025'),
                HorseItem(name: 'Applejack', date: '01 Jan, 2025'),
                HorseItem(name: 'Blaze', date: '15 Jan, 2025'),
                HorseItem(name: 'Thunder', date: '15 Jan, 2025'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HorseItem extends StatelessWidget {
  final String name;
  final String date;

  const HorseItem({super.key,

    required this.name,
    required this.date,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          title: Text(name),
          subtitle: Row(
            children: [
              Text('Previous Chart : ',
                  style: TextStyle(color: Colors.grey)),
              Text(
                date,
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          trailing: Icon(Icons.chevron_right),
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => Step4(title: name),
          //     ),
          //   );
          // },
        ),
        Divider(height: 1.h, color: Colors.blueGrey.shade100),
      ],
    );
  }
}
