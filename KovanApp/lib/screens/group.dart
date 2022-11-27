import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              groupAvatar("assets/images/9.png"),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, bottom: 5.0),
                child: shadowText("Mantar" + " Kovanı", 38, FontWeight.bold,
                    Colors.black, TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: shadowText(
                    "Kovan uygulamasını geliştiren ekibin kovanıdır :)",
                    20,
                    FontWeight.bold,
                    Color(0xFF535353),
                    TextAlign.center),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                memberAvatar("assets/images/6.png"),
                                SizedBox(width: 10),
                                shadowText(
                                    "Muhammed Said Gönül",
                                    20,
                                    FontWeight.bold,
                                    Color(0xFF3E3E3E),
                                    TextAlign.center),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                memberAvatar("assets/images/8.png"),
                                SizedBox(width: 10),
                                shadowText(
                                    "Eren Demiralay",
                                    20,
                                    FontWeight.bold,
                                    Color(0xFF3E3E3E),
                                    TextAlign.center),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                memberAvatar("assets/images/7.png"),
                                SizedBox(width: 10),
                                shadowText(
                                    "Hasan Altan",
                                    20,
                                    FontWeight.bold,
                                    Color(0xFF3E3E3E),
                                    TextAlign.center),
                              ],
                            ),
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
      ),
    );
  }
}

Widget memberAvatar(String link) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4)),
      ],
    ),
    child: CircleAvatar(
      backgroundImage: AssetImage(link),
      radius: 35,
    ),
  );
}

Widget groupAvatar(String link) {
  return Container(
    alignment: Alignment.topCenter,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0)),
      color: Color(0xFF9B72CF),
    ),
    child: Stack(children: <Widget>[
      FractionalTranslation(
        translation: Offset(0.0, 0.5),
        child: Align(
          child: Container(
            //margin: EdgeInsets.only(top: 50),
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
              backgroundImage: AssetImage(link),
              radius: 50,
            ),
          ),
          alignment: FractionalOffset(0.5, 0.0),
        ),
      ),
    ]),
  );
}

Widget shadowText(String message, double fontSize, FontWeight fontWeight,
    Color color, TextAlign textAlign) {
  return Text(
    message,
    textAlign: textAlign,
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
