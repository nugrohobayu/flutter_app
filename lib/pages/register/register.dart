import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          fontFamily: 'Plus Jakarta Sans'),
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  child: Image(
                    image: AssetImage("./assets/img/poni.png"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      backgroundColor: const Color(0xFF078282),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                      // if(email.isNotEmpty){
                      // }
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(50, 190, 0, 0),
                  height: 30,
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 220, 0, 0),
                  height: 20,
                  child: const Text(
                    "Create an account here",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 192, 190, 190),
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.account_box),
                        labelText: "Username",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.local_phone),
                        labelText: "Phone number",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.markunread_outlined),
                        labelText: "E-mail",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key_outlined),
                        labelText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.02,
                  ),
                  SizedBox(
                    width: mediaQueryWidth,
                    child: const Text(
                      "By signing up you agree with our Terms of Use",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  // Spacer(),
                  SizedBox(
                    height: mediaQueryHeight * 0.08,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        backgroundColor: const Color(0xFF078282),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        child: Text(
                          "Have account?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF078282),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
