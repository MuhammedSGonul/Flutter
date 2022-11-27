import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudyPage extends StatefulWidget {
  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildTopBar("Pomodoro"),
              studyImage(),
              callSetTimeDialog(),
              breakTimeText(5),
              buildButton("Başla"),
            ],
          ),
        ),
      ),
    );
  }


}

Widget shadowText(String text, double fontSize, FontWeight fontWeight,
    Color color, TextAlign textAlign) {
  return Text(
    text,
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

Widget buildTopBar(String title) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0)),
      color: Color(0xFF9B72CF),
    ),
    child: Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, bottom: 20.0),
            child: shadowText(title, 38, FontWeight.bold, Color(0xFFEBEBEB),
                TextAlign.center),
          ),
        ),
      ],
    ),
  );
}

Widget studyImage() {
  return CircleAvatar(
    backgroundColor: Colors.white,
    backgroundImage: AssetImage("assets/images/10.png"),
    radius: 130,
  );
}

class callSetTimeDialog extends StatefulWidget {
  @override
  State<callSetTimeDialog> createState() => _callSetTimeDialogState();
}

class _callSetTimeDialogState extends State<callSetTimeDialog> {
  static int workTime = 25, breakTime = 5;
  static int _selectedIndex = 0, selectedWork = 0;
  static int _selectedIndex2 = 0, selectedBreak = 0;
  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          openDialog();
        },
        child: shadowText(workTime.toStringAsFixed(2), 72, FontWeight.bold,
            Color(0xFF484848), TextAlign.center),
      );

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => StatefulBuilder(
          builder: (context, setState) => AlertDialog(
            title: Text("Çalışma zamanını ayarla",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
            content: Container(
              width: double.minPositive,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                        child: Text("Çalışma", style: TextStyle(fontSize: 22)),
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        child: ListView.builder(
                          itemCount: 36,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(((index + 1) * 5).toString(), textAlign: TextAlign.center),
                              selected: index == _selectedIndex,
                              onTap: () {
                                setState(() {
                                  _selectedIndex = index;
                                  selectedWork = ((index + 1) * 5);
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                        child: Text("Mola", style: TextStyle(fontSize: 22)),
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        child: ListView.builder(
                          itemCount: 12,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(((index + 1) * 5).toString(), textAlign: TextAlign.center),
                              selected: index == _selectedIndex2,
                              onTap: () {
                                setState(() {
                                  _selectedIndex2 = index;
                                  selectedBreak = ((index + 1) * 5);
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                },
                child: const Text('İptal'),
              ),
              TextButton(
                onPressed: (){
                  workTime = selectedWork;
                  breakTime = selectedBreak;
                  Navigator.pop(context, 'OK');
                },
                child: const Text('Tamam'),
              ),
            ],
          ),
        ),
      );
}

Widget breakTimeText(int minute) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      shadowText(
          "Mola", 28, FontWeight.bold, Color(0xFF484848), TextAlign.center),
      SizedBox(width: 25),
      shadowText(minute.toStringAsFixed(2), 28, FontWeight.bold,
          Color(0xFF484848), TextAlign.center),
    ],
  );
}

Widget buildButton(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: SizedBox(
      height: 70.0,
      width: 240.0,
      child: RaisedButton(
        color: Color(0xFF9B72CF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: shadowText(
            text, 30, FontWeight.w100, Colors.white, TextAlign.center),
        onPressed: () {
          //debugPrint("");
        },
      ),
    ),
  );
}



