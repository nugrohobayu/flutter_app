// import 'package:first_app/models/users.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class HomepagePage extends StatefulWidget {
  const HomepagePage({Key? key}) : super(key: key);
  @override
  State<HomepagePage> createState() => _HomepagePageState();
}

class _HomepagePageState extends State<HomepagePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Plus Jakarta Sans'),
      home: Scaffold(
        body: Container(
          width: mediaQueryWidth,
          height: mediaQueryHeight,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                // height: mediaQueryHeight / 3,
                width: mediaQueryWidth / 2,
                child: Image(image: AssetImage("./assets/img/doctor.png")),
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                child: Text(
                  "Doctor's Helpline",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: mediaQueryWidth * 0.7,
                child: const Text(
                  "Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                width: mediaQueryWidth,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: const Color(0xFF078282),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                      // if(email.isNotEmpty){
                      // }
                    },
                    child: const Text(
                      "Create Acount",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: mediaQueryWidth,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFF078282),
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: const Color(0xFFFFFFFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                      // if(email.isNotEmpty){
                      // }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF078282),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
