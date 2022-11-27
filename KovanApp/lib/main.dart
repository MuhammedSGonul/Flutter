import 'package:flutter/material.dart';

import 'package:kovan/screens/home.dart';
import 'package:kovan/screens/person.dart';
import 'package:kovan/navigation.dart';

import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Color(0xFF9B72CF), // status bar color
    //statusBarBrightness: Brightness.dark,//status bar brigtness
    //statusBarIconBrightness:Brightness.dark , //status barIcon Brightness
    //systemNavigationBarDividerColor: Colors.greenAccent,//Navigation bar divider color
    //systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.deepPurple,
        fontFamily: "Roboto",
        primaryColor: Color(0xFF9B72CF),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: Nav(),
    );
  }
}
