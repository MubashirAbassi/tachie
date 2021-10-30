
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:ttechic/screens/bottem_bar.dart';

class HomeScreen extends StatefulWidget {
  String text1;
  String text2;
  String text3;
  String text4;
  HomeScreen({this.text1,this.text2,this.text3,this.text4});
  @override
  _HomeScreenState createState() => _HomeScreenState(ttt1:text1,ttt2:text2,ttt3:text3,ttt4:text4);
}

class _HomeScreenState extends State<HomeScreen> {
  String ttt1;
  String ttt2;
  String ttt3;
  String ttt4;
  _HomeScreenState({this.ttt1,this.ttt2,this.ttt3,this.ttt4});

  TextEditingController current = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Total Sales",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w600,color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left:2.0),
                    child: Container(
                      height: 70,
                      width: 150,
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 12.0,
                                offset: Offset(0.0, 0.75)
                            )
                          ],
                          color: Colors.grey.shade100
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextFormField(
                          readOnly: true,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: ttt1,
                              hintStyle: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                          ),
                          style: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,bottom: 10.0),
                        child: Text("Total Deposits",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.grey.shade900),),
                      ),
                      SizedBox(width: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0,bottom: 10.0),
                        child: Text("Total Balance",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.grey.shade900),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Container(
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 12.0,
                                    offset: Offset(0.0, 0.75)
                                )
                              ],
                              color: Colors.grey.shade100
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: TextFormField(
                              readOnly: true,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: ttt2,
                                  hintStyle: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                              ),
                              style: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Container(
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 12.0,
                                    offset: Offset(0.0, 0.75)
                                )
                              ],
                              color: Colors.grey.shade100
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: TextFormField(
                              readOnly: true,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: ttt4,
                                  hintStyle: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                              ),
                              style: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0,bottom: 10.0),
                        child: Text("Collections this week",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.grey.shade900),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,bottom: 10.0),
                        child: Text("Total Expenses",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.grey.shade900),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Container(
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 12.0,
                                    offset: Offset(0.0, 0.75)
                                )
                              ],
                              color: Colors.grey.shade100
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: TextFormField(
                              readOnly: true,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: ttt3,
                                  hintStyle: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                              ),
                              style: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Container(
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 12.0,
                                    offset: Offset(0.0, 0.75)
                                )
                              ],
                              color: Colors.grey.shade100
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "0.0",
                                  hintStyle: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                              ),
                              style: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Text("Enter - Amount currently in your bank",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      SizedBox(width: 60.0,),
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            int currentValue = int.parse(current.text);
                            setState(() {
                              print("Setting state");
                              currentValue++;
                              current.text =
                                  (currentValue).toString(); // decrementing value
                            });
                          },
                          iconSize: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Container(
                          height: 70,
                          width: 150,
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 12.0,
                                    offset: Offset(0.0, 0.75)
                                )
                              ],
                              color: Colors.grey.shade100
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: TextFormField(
                              controller: current,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "0.0",
                                  hintStyle: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                              ),
                              style: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            int currentValue = int.parse(current.text);
                            setState(() {
                              print("Setting state");
                              currentValue--;
                              current.text =
                                  (currentValue).toString(); // decrementing value
                            });
                          },
                          iconSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Text("Bottom Line - After expenses are paid",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10.0,),
                  Text("Are you UP? or DOWN this week?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:2.0),
                    child: Container(
                      height: 70,
                      width: 150,
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 12.0,
                                offset: Offset(0.0, 0.75)
                            )
                          ],
                          color: Colors.grey.shade100
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextFormField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "0.0",
                              hintStyle: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,))
                          ),
                          style: TextStyle(color: Colors.blue.shade200,fontSize: 30.0,shadows: outlinedText(strokeColor: Colors.black,strokeWidth: 1,)),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }



}


List<Shadow> outlinedText({double strokeWidth = 2, Color strokeColor = Colors.black, int precision = 5}) {
  Set<Shadow> result = HashSet();
  for (int x = 1; x < strokeWidth + precision; x++) {
    for(int y = 1; y < strokeWidth + precision; y++) {
      double offsetX = x.toDouble();
      double offsetY = y.toDouble();
      result.add(Shadow(offset: Offset(-strokeWidth / offsetX, -strokeWidth / offsetY), color: strokeColor));
      result.add(Shadow(offset: Offset(-strokeWidth / offsetX, strokeWidth / offsetY), color: strokeColor));
      result.add(Shadow(offset: Offset(strokeWidth / offsetX, -strokeWidth / offsetY), color: strokeColor));
      result.add(Shadow(offset: Offset(strokeWidth / offsetX, strokeWidth / offsetY), color: strokeColor));
    }
  }
  return result.toList();
}