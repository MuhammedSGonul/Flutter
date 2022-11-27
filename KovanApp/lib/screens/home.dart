import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kovan/screens/person.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  Column(children: [
                    //Başlık
                    buildBaslik(),
                    buildPost("assets/images/2.jpg"),
                    buildAd("assets/images/4.png"),
                    buildPost("assets/images/2.jpg"),
                    buildAd("assets/images/4.png"),
                    buildPost("assets/images/3.jpg"),
                    buildAd("assets/images/5.jpg"),
                    buildPost("assets/images/1.jpg"),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildBottomNavigator() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -3),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
          )
        ],
        color: Colors.white.withOpacity(0.9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavicon(FontAwesomeIcons.home, true),
          buildNavicon(FontAwesomeIcons.book, false),
          buildNavicon(FontAwesomeIcons.solidFlag, false),
          buildNavicon(FontAwesomeIcons.solidUserCircle, false),
        ],
      ),
    ),
  );
}

Widget buildNavicon(@required IconData iconData, @required bool active) {
  return Icon(iconData,
      size: 24, color: active ? Color(0xFF17B8BA) : Colors.black);
}

Widget buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Center(
      child: Text("KOVAN",
          style: TextStyle(
              fontSize: 32,
              color: Color(0xFF0A1034),
              fontWeight: FontWeight.bold)),
    ),
  );
}

Widget buildPost(String link) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Center(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            //height: 660,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color(0xFFF6EFEF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.55),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  height: 512,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      //image: NetworkImage(link),
                      image: AssetImage(link),
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.75),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/6.png")),
                          SizedBox(width: 10),
                          Text("Muhammed 👽",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          new Spacer(),
                          Icon(FontAwesomeIcons.heart,
                              size: 24, color: Colors.black),
                          SizedBox(width: 10),
                          Icon(FontAwesomeIcons.comment,
                              size: 24, color: Colors.black),
                          SizedBox(width: 10),
                          Icon(FontAwesomeIcons.ellipsisH,
                              size: 24, color: Colors.black),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
                        child: Text(
                            "   " +
                                "Arkadaşlar bu soruyu çözmekte zorlanıyorum. Lütfen yardım edebilir misiniz?",
                            style: TextStyle(
                                color: Color(0xFF535353),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildAd(String link) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Center(
      child: Container(
        height: 96,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            //image: NetworkImage(link),
            image: AssetImage(link),
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.0),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
      ),
    ),
  );
}
