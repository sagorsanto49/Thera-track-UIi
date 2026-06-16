import 'package:doctor/feature/signin/presentation/page/step_3.dart';
import 'package:flutter/material.dart';

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
        title: const Text('Step 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Clients',
                          style: TextStyle(color: Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            // Add Client page navigation
                          },
                          child: const Text(
                            'Add Clients',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Center(
                    child: Container(
                      height: 40,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const SearchBar(
                        leading: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Padding(
                    padding: EdgeInsets.all(8),
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
                    const Divider(height: 1, thickness: 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(textitem[index]),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_sharp,
                    ),

                    onTap: () {
                      if (textitem[index] == 'Turner') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Step3(),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),

            Container(
              height: 40,
              width: double.infinity,
              color: Colors.indigoAccent,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: const Text(
                'All Clients',
                style: TextStyle(color: Colors.white),
              ),
            ),

            /// All Clients
            Expanded(
              child: ListView.separated(
                itemCount: ttextitem.length,
                separatorBuilder: (context, index) =>
                    const Divider(height: 1, thickness: 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(ttextitem[index]),
                    trailing: const Icon(
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
