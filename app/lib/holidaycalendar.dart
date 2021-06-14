import 'package:flutter/material.dart';

class HolidayCalendar extends StatefulWidget{
  @override
  _HolidayCalendarState createState() => _HolidayCalendarState();
}

class _HolidayCalendarState extends State<HolidayCalendar> {
  bool state = false;
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
                            'Holiday Calendar',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                      body: Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                '15th August | Sun',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('Independence Day'),
                            ),
                            ListTile(
                              title: Text(
                                '10th September | Fri',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('Ganesh Chaturthi'),
                            ),
                            ListTile(
                              title: Text(
                                '2nd October | Sat',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('Gandhi Jayanti'),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  TextButton(
                                      onPressed: ()=>{},
                                      child: Text('See All Holidays'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      isExpanded: state,
                    ),
                  ],
                );
  }
}