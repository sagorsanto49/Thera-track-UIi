import 'package:doctor/feature/signin/presentation/page/step_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step1 extends StatelessWidget {
  const Step1({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> textitem = ['Roger', 'Walker', 'Turner', 'sep', 'differ'];

    List<String> ttextitem = [
      'Rogers',
      'Walker',
      'Lee',
      'Reed',
      'sadeq',
      'tt',
      'rr',
      'gg',
      'hh',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Step 1'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Clients',
                          style: TextStyle(color: Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            // Add Client page navigation
                          },
                          child: Text(
                            'Add Clients',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Center(
                    child: Container(
                      height: 40.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: SearchBar(
                        leading: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                    ),
                  ),

                  SizedBox(height: 5.h),

                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Text(
                      'Recent Clients',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            /// Recent Clients
            Expanded(
              child: ListView.separated(
                itemCount: textitem.length,
                separatorBuilder: (context, index) =>
                    Divider(height: 1.h, thickness: 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(textitem[index]),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                    ),

                    onTap: () {
                      if (textitem[index] == 'Turner') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Step3(),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),

            Container(
              height: 40.h,
              width: double.infinity,
              color: Colors.indigoAccent,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'All Clients',
                style: TextStyle(color: Colors.white),
              ),
            ),

            /// All Clients
            Expanded(
              child: ListView.separated(
                itemCount: ttextitem.length,
                separatorBuilder: (context, index) =>
                    Divider(height: 1.h, thickness: 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(ttextitem[index]),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
