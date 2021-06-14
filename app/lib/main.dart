import 'package:app/holidaycalendar.dart';
import 'package:app/leave.dart';
import 'package:app/mycalendar.dart';
import 'package:flutter/material.dart';
import 'package:app/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //       theme: ThemeData(
      //   // Define the default brightness and colors.

      //   // Define the default TextTheme. Use this to specify the default
      //   // text styling for headlines, titles, bodies of text, and more.
      //   textTheme: TextTheme(
      //     headline1: TextStyle(color: Colors.white),
      //     headline2: TextStyle(color: Colors.white),
      //     headline3: TextStyle(color: Colors.white),
      //     headline4: TextStyle(color: Colors.white),
      //     headline5: TextStyle(color: Colors.white),
      //     headline6: TextStyle(color: Colors.white),
      //     // bodyText2: TextStyle(color: Colors.white ),
      //     bodyText1: TextStyle(color: Colors.white ),
      //     // subtitle1: TextStyle(color: Colors.white),
      //     // subtitle2: TextStyle(color: Colors.white),
      // ),
      //       ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Leave & Attendance'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: new Header(),
            ),
            // TableCalendar(calendarController: _controller),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                new MyCalendar(),
                SizedBox(
                  height: 20,
                ),
                new Leave(),
                SizedBox(
                  height: 20,
                ),
                new HolidayCalendar(),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ]),
        ));
  }
}
