import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return Row(
                children: [
                  Container(
                      width: 120,
                      height: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Absent Days For Current & Last Month\n-',
                            style: TextStyle(color: Colors.white),
                          ),
                          Column(
                            children: [
                              Text(
                                '9.0',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Days',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 120,
                      height: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Leave & Regularization History\n-',
                            style: TextStyle(color: Colors.white),
                          ),
                          Column(
                            children: [
                              Text(
                                'Icon',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 120,
                      height: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Time Report Team\n-',
                            style: TextStyle(color: Colors.white),
                          ),
                          Column(
                            children: [
                              Text(
                                'Icon',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 120,
                      height: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'NOT ASSIGNED\n-',
                            style: TextStyle(color: Colors.white),
                          ),
                          Column(
                            children: [
                              Text(
                                'Icon',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              );
  }
}