import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(children: [
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              color: Color(0xFF9B72CF),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 8.0, left: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4))
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/6.png"),
                        radius: 75,
                      ),
                    ),
                  ),
                  shadowText("Muhammed Said Gönül", 32, FontWeight.bold, Color(0xFFEBEBEB)),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, right: 16.0, left: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            shadowText("Soru Sayısı", 20, FontWeight.bold, Color(0xFFEBEBEB)),
                            shadowText("12", 16, FontWeight.w100, Color(0xFFEBEBEB)),
                          ],
                        ),
                        Column(
                          children: [
                            shadowText("Çalışma Saati", 20, FontWeight.bold, Color(0xFFEBEBEB)),
                            shadowText(
                                "9,1" + " saat/gün", 16, FontWeight.w100, Color(0xFFEBEBEB)),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ])),
      ),
    );
  }
}

Widget shadowText(String message, double fontSize, FontWeight fontWeight, Color color) {
  return Text(
    message,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      shadows: [
        Shadow(
          blurRadius: 4.0,
          color: Colors.black.withOpacity(0.25),
          offset: Offset(0, 4.0),
        ),
      ],
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
