import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ttechic/screens/First_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => FirstScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 35.0,
                      ),
                      ClipOval(
                        child: Image.asset(
                          'assets/logo.png',
                          width: 180,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "TechiE",
                        style: TextStyle(
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w600,
                            fontSize: 60.0),
                      ),
                      Text(
                        "ContractoR",
                        style: TextStyle(
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 40.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        backgroundColor: Colors.blue.shade300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Loading....",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 40.0,
                          color: Colors.blue.shade600),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
