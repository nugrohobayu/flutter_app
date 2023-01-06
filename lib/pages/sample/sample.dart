import 'package:flutter/material.dart';
import 'package:first_app/models/users.dart';

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);
  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "a",
      "age": 27,
    },
    {
      "name": "Maldini",
      "age": 25,
    },
    {
      "name": "Yannu",
      "age": 20,
    },
    {
      "name": "Anang",
      "age": 20,
    },
    {
      "name": "Ferdi",
      "age": 20,
    },
  ];

  UsersState datas = UsersState();

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Plus Jakarta Sans'),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('PakeKTP'),
        // ),
        body: Stack(
          children: [
            Container(
              width: mediaQueryWidth,
              height: mediaQueryHeight,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF6E85B7), Color(0xFFADE2FA)])),
              child: Column(
                // shrinkWrap: true,
                children: myList.map((data) {
                  return Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(),
                                Column(
                                  children: [
                                    Text("Name : ${data["name"]} "),
                                    Text("Age : ${data["age"]} Tahun"),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
