import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ttechic/models/note.dart';
import 'package:ttechic/screens/bottem_bar.dart';
import 'package:ttechic/utils/database_helper.dart';

import 'home_screen.dart';

class NoteDetail extends StatefulWidget {

  final String appBarTitle;
  final Note note;

  NoteDetail(this. note, this.appBarTitle);

  @override
  State<StatefulWidget> createState() {

    return NoteDetailState(this.note, this.appBarTitle);
  }
}

class NoteDetailState extends State<NoteDetail> {

  static var _priorities = ['High', 'Low'];

  DatabaseHelper helper = DatabaseHelper();

  String appBarTitle;
  Note note;
  TextEditingController field1 = TextEditingController();
  TextEditingController field2 = TextEditingController();
  TextEditingController field3 = TextEditingController();
  TextEditingController field4 = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  double a = 0;
  double b = 0;
  double c = 0;
  String text1;
  String text2;
  String text3;
  String text4;
  var counter =0;
  List<String> field1list= [];
  List<int> field2list= [];

  List<int> field3list= [];


  NoteDetailState(this.note, this.appBarTitle);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;

    titleController.text = note.title;
    descriptionController.text = note.description;

    return WillPopScope(

        onWillPop: () {
          // Write some code to control things, when user press Back navigation button in device navigationBar
          moveToLastScreen();
        },

        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade200,
            title: Text(appBarTitle),
            leading: IconButton(icon: Icon(
                Icons.arrow_back),
                onPressed: () {
                  // Write some code to control things, when user press back button in AppBar
                  moveToLastScreen();
                }
            ),
          ),

          body: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[

                // First element
                ListTile(
                  title: DropdownButton(
                      items: _priorities.map((String dropDownStringItem) {
                        return DropdownMenuItem<String> (
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),

                      style: textStyle,

                      value: getPriorityAsString(note.priority),

                      onChanged: (valueSelectedByUser) {
                        setState(() {
                          debugPrint('User selected $valueSelectedByUser');
                          updatePriorityAsInt(valueSelectedByUser);
                        });
                      }
                  ),
                ),

                // Second Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Title Text Field');
                      updateTitle();
                    },
                    decoration: InputDecoration(
                        labelText: 'Enter Name',
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Name",labelStyle: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),
                        fillColor: Colors.blue.shade100
                    ),
                  ),
                ),

                // Third Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: descriptionController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Description Text Field');
                      updateDescription();
                    },
                    decoration: InputDecoration(
                        labelText: 'Description',
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Discription",labelStyle: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),
                        fillColor: Colors.blue.shade100
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    SizedBox(
                      width: 50.0,
                    ),
                    Text("Total Price",style: TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.w600),),
                    SizedBox(
                      width: 95.0,
                    ),
                    Text("Deposits",style: TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.w600),),

                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        int currentValue = int.parse(field1.text);
                        setState(() {
                          currentValue++;
                          field1.text =
                              (currentValue).toString(); // incrementing value
                        });
                      },
                      iconSize: 20,
                      tooltip: "increase",
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 12.0,
                                offset: Offset(0.0, 0.75)
                            )
                          ],
                          color: Colors.blue.shade100
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(child: TextField(
                          controller: field1,
                          keyboardType: TextInputType.number,
                          onChanged: (value){
                            text1=value;
                            final x = double.tryParse(value);

                            setState(() {
                              a = x ?? 0; // handle null and String

                              field3.text = (a - b).toStringAsFixed(2);
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "0.0",
                              hintStyle: TextStyle(color: Colors.blue.shade400,fontSize: 20.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                          ),
                          style: TextStyle(color: Colors.blue.shade300,fontSize: 20.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                        )),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        int currentValue = int.parse(field1.text);
                        setState(() {
                          print("Setting state");
                          currentValue--;
                          field1.text =
                              (currentValue).toString(); // decrementing value
                        });
                      },
                      iconSize: 20,
                      tooltip: "decrease",
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        int currentValue = int.parse(field2.text);
                        setState(() {
                          currentValue++;
                          field2.text =
                              (currentValue).toString(); // incrementing value
                        });
                      },
                      iconSize: 20,
                      tooltip: "increase",
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              )
                            ],
                            color: Colors.blue.shade100
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Center(child: TextField(
                            controller: field2,
                            keyboardType: TextInputType.number,
                            onChanged: (value){
                              text2=value;
                              final x = double.tryParse(value);

                              setState(() {
                                b = x ?? 0;

                                field3.text = (a - b).toStringAsFixed(2);
                                text4 = (a - b).toStringAsFixed(2);
                              });
                            },
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "0.0",
                                hintStyle: TextStyle(color: Colors.blue.shade400,fontSize: 20.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                            ),
                            style: TextStyle(color: Colors.blue.shade300,fontSize: 18.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                          )),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        int currentValue = int.parse(field2.text);
                        setState(() {
                          print("Setting state");
                          currentValue--;
                          field2.text =
                              (currentValue).toString(); // decrementing value
                        });
                      },
                      iconSize: 20,
                      tooltip: "decrease",
                    ),
                  ],
                ),
                SizedBox(height:25,),
                SizedBox(height:25,),
                Row(
                  children: [
                    SizedBox(
                      width: 35.0,
                    ),
                    Text("Balance",style: TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.w600),),
                    SizedBox(
                      width: 70.0,
                    ),
                    Text("Collect This week",style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),),

                  ],
                ),
                SizedBox(height: 10.0,),
                Expanded(
                  child: Row(
                    children: [
                      Container(width: 30,),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 15.0,
                                    offset: Offset(0.0, 0.75)
                                )
                              ],
                              color: Colors.blue.shade100
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Center(child: TextField(
                              controller: field3,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              readOnly: true,
                              decoration: InputDecoration(
                                  hintText: text4,
                                  hintStyle: TextStyle(color: Colors.blue.shade400,fontSize: 20.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                              ),
                              style: TextStyle(color: Colors.blue.shade300,fontSize: 20.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                            )),
                          ),
                        ),
                      ),
                      Container(width: 30,),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          int currentValue = int.parse(field4.text);
                          setState(() {
                            currentValue++;
                            field4.text =
                                (currentValue).toString(); // incrementing value
                          });
                        },
                        iconSize: 20,
                        tooltip: "increase",
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              )
                            ],
                            color: Colors.blue.shade100
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: TextField(
                            controller: field4,
                            keyboardType: TextInputType.number,
                            onChanged: (value){
                              text3=value;
                              final z = double.tryParse(value);

                              setState(() {
                                text3=value;
                                c = z ?? 0; // handle null and String

                                field3.text = ((a - b)-c).toStringAsFixed(2);
                                text4 = ((a - b)-c).toStringAsFixed(2);
                              });
                            },
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "0.0",
                                hintStyle: TextStyle(color: Colors.blue.shade400,fontSize: 20.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                            ),
                            style: TextStyle(color: Colors.blue.shade300,fontSize: 20.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                          )),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          int currentValue = int.parse(field4.text);
                          setState(() {
                            print("Setting state");
                            currentValue--;
                            field4.text =
                                (currentValue).toString(); // decrementing value
                          });
                        },
                        iconSize: 20,
                        tooltip: "decrease",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                // Fourth Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Colors.blue.shade300,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            "save",style: TextStyle(color: Colors.black),
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            
                            setState(() {
                              debugPrint("Save button clicked");
                              _save();
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) =>HomeScreen(text1: text1,text2: text2,text3: text3,text4:text4)));
                            });
                          },
                        ),
                      ),

                      Container(width: 5.0,),

                      Expanded(
                        child: RaisedButton(
                          color: Colors.blue.shade300,
                          textColor: Colors.black,
                          child: Text(
                            'Delete',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Delete button clicked");
                              _delete();
                            });
                          },
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomBar(),
        ));
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  // Convert the String priority in the form of integer before saving it to Database
  void updatePriorityAsInt(String value) {
    switch (value) {
      case 'High':
        note.priority = 1;
        break;
      case 'Low':
        note.priority = 2;
        break;
    }
  }

  // Convert int priority to String priority and display it to user in DropDown
  String getPriorityAsString(int value) {
    String priority;
    switch (value) {
      case 1:
        priority = _priorities[0];  // 'High'
        break;
      case 2:
        priority = _priorities[1];  // 'Low'
        break;
    }
    return priority;
  }

  // Update the title of Note object
  void updateTitle(){
    note.title = titleController.text;
  }

  // Update the description of Note object
  void updateDescription() {
    note.description = descriptionController.text;
  }

  // Save data to database
  void _save() async {

    moveToLastScreen();

    note.date = DateFormat.yMMMd().format(DateTime.now());
    int result;
    if (note.id != null) {  // Case 1: Update operation
      result = await helper.updateNote(note);
    } else { // Case 2: Insert Operation
      result = await helper.insertNote(note);
    }

    if (result != 0) {  // Success
      _showAlertDialog('Status', 'Note Saved Successfully');
    } else {  // Failure
      _showAlertDialog('Status', 'Problem Saving Note');
    }

  }

  void _delete() async {

    moveToLastScreen();

    // Case 1: If user is trying to delete the NEW NOTE i.e. he has come to
    // the detail page by pressing the FAB of NoteList page.
    if (note.id == null) {
      _showAlertDialog('Status', 'No Note was deleted');
      return;
    }

    // Case 2: User is trying to delete the old note that already has a valid ID.
    int result = await helper.deleteNote(note.id);
    if (result != 0) {
      _showAlertDialog('Status', 'Note Deleted Successfully');
    } else {
      _showAlertDialog('Status', 'Error Occured while Deleting Note');
    }
  }

  void _showAlertDialog(String title, String message) {

    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (_) => alertDialog
    );
  }

}


