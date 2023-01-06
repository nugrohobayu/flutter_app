import 'dart:async';

import 'package:first_app/app.dart';
// import 'package:first_app/store/post/setup_post.dart';
import 'package:first_app/store/setup.dart';
import 'package:flutter/material.dart';

void main() {
  runZoned(() async {
    setup();
    runApp(const App());
  });
}
