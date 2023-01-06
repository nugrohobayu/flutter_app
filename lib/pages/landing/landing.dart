import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);
  @override
  State<Landing> createState() => _LandingPage();
}

class _LandingPage extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Plus Jakarta Sans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            actions: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.supervised_user_circle_outlined,
                    color: Color(
                      0xFF078282,
                    ),
                    size: 34,
                  ),
                ),
              )
            ],
            elevation: 0,
            backgroundColor: Color(0xFFFFFFFF),
            // title: const Text(
            //   'Menu',
            //   textAlign: TextAlign.right,
            //   style: TextStyle(
            //       fontSize: 16,
            //       fontWeight: FontWeight.w700,
            //       color: Color(0xFF078282)),
            // ),
            iconTheme: const IconThemeData(
              color: Color(0xFF078282),
              size: 30,
            )),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF078282),
                ),
                child: Text('Menu'),
              ),
              ListTile(
                title: Text('Mobx'),
                onTap: () {
                  Navigator.pushNamed(context, '/mobx_page');
                },
              ),
              ListTile(
                title: Text('Get API'),
                onTap: (() {
                  Navigator.pushNamed(context, '/get_api_page');
                }),
              ),
              ListTile(
                title: Text('Post Api'),
                onTap: () {
                  Navigator.pushNamed(context, '/post_api_page');
                },
              ),
              ListTile(
                title: Text("Secore Storage"),
                onTap: () {
                  Navigator.pushNamed(context, '/secure_storage');
                },
              ),
              ListTile(
                title: Text('Count Down'),
                onTap: () {
                  Navigator.pushNamed(context, '/count_down');
                },
              ),
              ListTile(
                title: Text('Whatsapp Launcher'),
                onTap: () {
                  Navigator.pushNamed(context, '/url_launcher');
                },
              ),
              ListTile(
                title: Text("Game Puzzle"),
                onTap: (){
                  Navigator.pushNamed(context, '/game_puzzle');
                },
              ),
              ListTile(
                title: Text("Image Picker"),
                onTap: (){
                  Navigator.pushNamed(context, '/image_picker');
                },
              ),
            ],
          ),
        ),
        body: Container(
          width: mediaQueryWidth,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                child: Text(
                  "Hi, Bayu",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff092C4C),
                  ),
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              SizedBox(
                height: mediaQueryHeight * 0.06,
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color.fromRGBO(110, 133, 183, 0.1),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(110, 133, 183, 0.1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(110, 133, 183, 0.1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(9, 44, 76, 0.45),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF078282),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.01,
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    // height: mediaQueryHeight * 0.2,
                    child: Card(
                      elevation: 2,
                      color: Color(0xFF078282),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: mediaQueryHeight * 0.16,
                        width: mediaQueryWidth,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Take Care Of Your",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Health Needs Our",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Services",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // color: Colors.red,
                    // margin: EdgeInsets.fromLTRB(140, 0, 0, 0),
                    // padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    height: 160,
                    left: 100,
                    bottom: 5,
                    child: Image(image: AssetImage('./assets/img/doctors.png')),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Color(0xFF078282),
                    size: 34,
                  )
                ],
              ),
              SizedBox(height: mediaQueryHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 4,
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: mediaQueryHeight * 0.1,
                        width: mediaQueryWidth * 0.24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assignment_turned_in_outlined,
                              size: mediaQueryWidth * 0.12,
                              color: Color(0xFF078282),
                            ),
                            const Text(
                              'Category',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                // color: Color(0xFF078282),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: mediaQueryHeight * 0.1,
                        width: mediaQueryWidth * 0.24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assignment_turned_in_outlined,
                              size: mediaQueryWidth * 0.12,
                              color: Color(0xFF078282),
                            ),
                            const Text(
                              'Category',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                // color: Color(0xFF078282),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: mediaQueryHeight * 0.1,
                        width: mediaQueryWidth * 0.24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assignment_turned_in_outlined,
                              size: mediaQueryWidth * 0.12,
                              color: Color(0xFF078282),
                            ),
                            const Text(
                              'Category',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                // color: Color(0xFF078282),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                // height: mediaQueryHeight * 0.04,
                child: Text(
                  'Specialist',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  Stack(
                    children: [
                      Card(
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.red,
                              padding: EdgeInsets.fromLTRB(120, 10, 25, 10),
                              height: mediaQueryHeight * 0.14,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'DR. Lissa ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    'Specialist ',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  const Text(
                                    'Siloam Hospital ',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 16,
                                    // itemPadding:
                                    //     EdgeInsets.symmetric(horizontal: 0.1),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        height: mediaQueryHeight * 0.15,
                        width: mediaQueryWidth * 0.4,
                        top: 5,
                        child: const Image(
                          image: AssetImage('./assets/img/nurse.png'),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 20,
                        child: Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.call,
                              color: Color(0xFF078282),
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Card(
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.red,
                              padding: EdgeInsets.fromLTRB(120, 10, 25, 10),
                              height: mediaQueryHeight * 0.14,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'DR. Lissa ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    'Specialist ',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  const Text(
                                    'Siloam Hospital ',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 16,
                                    // itemPadding:
                                    //     EdgeInsets.symmetric(horizontal: 0.1),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        height: mediaQueryHeight * 0.15,
                        width: mediaQueryWidth * 0.4,
                        top: 5,
                        child: const Image(
                          image: AssetImage('./assets/img/nurse.png'),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 20,
                        child: Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.call,
                              color: Color(0xFF078282),
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Card(
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.red,
                              padding: EdgeInsets.fromLTRB(120, 10, 25, 10),
                              height: mediaQueryHeight * 0.14,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'DR. Lissa ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    'Specialist ',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  const Text(
                                    'Siloam Hospital ',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 16,
                                    // itemPadding:
                                    //     EdgeInsets.symmetric(horizontal: 0.1),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        height: mediaQueryHeight * 0.15,
                        width: mediaQueryWidth * 0.4,
                        top: 5,
                        child: const Image(
                          image: AssetImage('./assets/img/nurse.png'),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 20,
                        child: Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.call,
                              color: Color(0xFF078282),
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
