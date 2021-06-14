import 'package:app/calendar.dart';
import 'package:flutter/material.dart';

class MyCalendar extends StatefulWidget{
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  bool state=false;
  Widget build(BuildContext context)
  {
    return ExpansionPanelList(
                  expandedHeaderPadding: EdgeInsets.all(0),
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      state = !state;
                    });
                  },
                  children: [
                    ExpansionPanel(
                      canTapOnHeader: true,
                      backgroundColor: Colors.blue,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            'My Calendar',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                      body: new Calendar(),
                      // body: Container(
                      //   padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //   ),
                      //   child: TableCalendar(
                      //     firstDay: DateTime.utc(2010, 10, 16),
                      //     lastDay: DateTime.utc(2030, 3, 14),
                      //     focusedDay: DateTime.now(),
                      //   ),
                      // ),
                      isExpanded: state,
                    ),
                  ],
                );
  }
}