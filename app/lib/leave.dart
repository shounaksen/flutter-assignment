import 'package:app/calendar.dart';
import 'package:flutter/material.dart';

class Leave extends StatefulWidget{
  @override
  _LeaveState createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  bool state=false;
  bool applyLeave=false;
  bool checkbox=false;
  String leavetype='';
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
                            'Apply Leave',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                      body: Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            if (applyLeave == false)
                              Column(children: [
                                ListTile(
                                  title: Text('CL/Contigency Leave'),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          width: double.infinity,
                                          child: Text(
                                              '8.0 Remaining\nValid Till: 31/12/2021')),
                                      TextButton(
                                          onPressed: ()=>{setState(() {
                                            applyLeave=true;
                                            leavetype='CL';
                                          })},
                                          child: Text('APPLY'))
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: Text('Optional Holiday'),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          width: double.infinity,
                                          child: Text(
                                              '3.0 Remaining\nValid Till: 31/12/2021')),
                                      TextButton(
                                          onPressed: ()=>{setState(() {
                                            applyLeave=true;
                                            leavetype='Optional';
                                          })},
                                          child: Text('APPLY'))
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: Text('Special Privilege Leave'),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          width: double.infinity,
                                          child: Text(
                                              '10.0 Remaining\nValid Till: 31/12/2021')),
                                      TextButton(
                                          onPressed: ()=>{setState(() {
                                            applyLeave=true;
                                            leavetype='SPL';
                                          })},
                                          child: Text('APPLY'))
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      TextButton(
                                          onPressed: ()=>{},
                                          child: Text('See More')),
                                    ],
                                  ),
                                ),
                              ])
                            else
                              Container(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Form(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            new Calendar(),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              fillColor: Color.fromARGB(
                                                  255, 220, 220, 220),
                                              filled: true,
                                              labelText: 'From Date',
                                              hintText: 'dd/mm/yyyy'),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromARGB(
                                                255, 220, 220, 220),
                                            labelText: 'To Date',
                                            hintText: 'dd/mm/yyyy'
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          decoration: const InputDecoration(
                                            labelText: 'Type Of Leave',
                                            filled: true,
                                            fillColor: Color.fromARGB(
                                                255, 220, 220, 220),
                                          ),
                                          initialValue: leavetype,
                                        ),
                                        CheckboxListTile(
                                            title: Text('Apply For Half Day'),
                                            value: checkbox,
                                            onChanged: (val) {
                                              setState(() {
                                                checkbox = !checkbox;
                                              });
                                            }),
                                            TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromARGB(
                                                255, 220, 220, 220),
                                            labelText: 'Reason',
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          OutlinedButton(
                                              onPressed: () => {
                                                    setState(() {
                                                      applyLeave = false;
                                                    })
                                                  },
                                              child: Text('Cancel')),
                                          ElevatedButton(
                                              onPressed: () => {
                                                    setState(() {
                                                      applyLeave = false;
                                                    })
                                                  },
                                              child: Text('Confirm')),
                                        ])
                                      ])))
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     children: [
                            //       TextButton(onPressed: onpress, child: Text('See More')),
                            //     ],
                            //   ))
                          ],
                        ),
                      ),
                      // applyLeave==false?showLeave:showLeave,
                      // if(applyLeave==false)
                      // showLeave;
                      // esle
                      // showLeave;,
                      isExpanded: state,
                    ),
                  ],
                );
  }
}