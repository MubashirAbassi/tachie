
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:ttechic/screens/home_screen.dart';
import 'package:ttechic/screens/log_in.dart';
import 'package:ttechic/screens/note_list.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.grey.shade500),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        height: 50.0,
                        width: 410.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(width: 10.0,),
                            Flexible(
                              child: GestureDetector(
                                  child: Text("Total Sales",style: TextStyle(fontWeight: FontWeight.bold),),
                              onTap: (){
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) => HomeScreen()));
                              },),
                            ),
                            SizedBox(width: 15.0,),
                            Flexible(
                              child: GestureDetector(
                                  child:Text("Running Jobs",style: TextStyle(fontWeight: FontWeight.bold),),
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (context) =>NoteList()));
                                  }),
                            ),
                            SizedBox(width: 15.0,),
                            Flexible(
                              child: GestureDetector(
                                  child:Text("Expenses",style: TextStyle(fontWeight: FontWeight.bold),),
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (context) =>LogIn()));
                                  }),
                            ),
                            SizedBox(width: 15.0,),
                            Flexible(
                              child: GestureDetector(
                                  child:Text("Next in Line",style: TextStyle(fontWeight: FontWeight.bold),),
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (context) =>LogIn()));
                                  }),
                            ),
                          ],
                        )),
                  ),
                ])));
  }
}
