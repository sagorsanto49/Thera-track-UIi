import 'package:doctor/feature/signin/presentation/page/step2.dart';
import 'package:flutter/material.dart';

class Step1 extends StatelessWidget {
  const Step1({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> textitem = ['Roger', 'Walker', 'Turner', 'Turner', 'Turner'];

    List<String> ttextitem = [
      'Rogers',
      'Walker',
      'Lee',
      'Reed',
      'Turner',
      'Turner',
      'Turner',
      'Turner',
      'Turner',
      'Turner',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Step 1')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.indigoAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Clients', style: TextStyle(color: Colors.white)),
                        SizedBox(width: 200),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Step2()),
                            );
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
                      height: 30,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: SearchBar(leading: Icon(Icons.search)),
                    ),
                  ), // searchbar
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Recent Clients',
                      style: TextStyle(color: Colors.white),
                    ), // Recent Clients
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(textitem[index]),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 10, thickness: 2);
                },
                itemCount: textitem.length,
              ),
            ),

            // All Clients
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.indigoAccent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'All Clients',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(ttextitem[index]),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 10, thickness: 2);
                },
                itemCount: ttextitem.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
