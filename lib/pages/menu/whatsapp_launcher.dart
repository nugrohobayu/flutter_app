
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class WhatsappLauncher extends StatefulWidget {
  const WhatsappLauncher({super.key});

  @override
  State<WhatsappLauncher> createState() => _WhatsappLauncherState();
}

// var whatsappUrl =
//     "whatsapp://send?phone=${_countryCodeController.text + _phoneController.text}" +
//         "&text=${Uri.encodeComponent(_messageController.text)}";

// TextEditingController _countryCodeController = TextEditingController();
// TextEditingController _messageController = TextEditingController();
// TextEditingController _phoneController = TextEditingController();

// _launch(url) async {
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     print("Not Supported");
//   }
// }

class _WhatsappLauncherState extends State<WhatsappLauncher> {
  void launcherWhatsApp({required int phone, required String message}) async {
    // String url() {
    //   if (Platform.isAndroid) {
    //     return "https://wa.me/$phone:085867881107:/?text=${Uri.parse(message)}";
    //   } else {
    //     return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}";
    //   }
    // }

    // if (await canLaunchUrl(url())) {
    //   await launchUrl();
    // } else {
    //   throw 'not launch ${url()}';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Plus Jakarta Sans'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Game Puzzle"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                child: Text("data"),
              )
              // ElevatedButton(
              //     onPressed: (() {
              //       launcherWhatsApp(phone: 085867881107, message: 'Hello Word');
              //     }),
              //     child: const Text("Open"),),
              
            ],
          ),
        ),
      ),
    );
  }
}
