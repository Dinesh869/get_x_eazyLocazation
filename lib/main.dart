import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/messages_language.dart';
import 'package:get_x/views/homepage.dart';
import 'package:get_x/views/language_change.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Message(),
      locale:  Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      title: 'Flutter Demo',

      theme: ThemeData(
         primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LanguageChange(),
    );
  }
}

