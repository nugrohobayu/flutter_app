// import 'dart:js';

import 'package:first_app/pages/homepage/homepage.dart';
import 'package:first_app/pages/landing/landing.dart';
import 'package:first_app/pages/login/login.dart';
import 'package:first_app/pages/menu/count_down.dart';
import 'package:first_app/pages/menu/game_puzzle.dart';
import 'package:first_app/pages/menu/getApiPage.dart';
import 'package:first_app/pages/menu/image_picker.dart';
import 'package:first_app/pages/menu/mobx_page.dart';
import 'package:first_app/pages/menu/post-api-page.dart';
import 'package:first_app/pages/menu/secure_setorage.dart';
import 'package:first_app/pages/menu/whatsapp_launcher.dart';
import 'package:first_app/pages/register/register.dart';
import 'package:flutter/cupertino.dart';

var customRoutes = <String, WidgetBuilder>{
  '/homepage': (context) => const HomepagePage(),
  '/login': (context) => const Login(),
  '/register': (context) => const Register(),
  '/landing': (context) => const Landing(),
  '/mobx_page': (context) => const Mobx_page(),
  '/get_api_page': (context) => const GetApiPage(),
  '/post_api_page': (context) => const PostApiPage(),
  '/secure_storage': (context) => const SecureStorage(),
  '/count_down': (context) => const CountDown(),
  '/url_launcher': (context) => const WhatsappLauncher(),
  '/game_puzzle': (context) => const GamePuzzle(),
  '/image_picker': (context) => const ImagePick(),
};
