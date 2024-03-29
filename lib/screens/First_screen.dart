
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:ttechic/widgets/custom_dialog.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: Colors.white,
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: _height * 0.025,
                ),
                Text(
                  "WELCOME",
                  style: TextStyle(
                      fontSize: 45.0,
                      color: Colors.blue.shade400,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _height * 0.05,
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: _height * 0.05,
                ),
                AutoSizeText(
                  "Let's Start Proceeding Into My Application",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.blue.shade400,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: _height * 0.1,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: RaisedButton(
                    elevation: 15.0,
                      color: Colors.blue.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, right: 25.0, left: 25.0),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      onPressed: () {
                      showDialog(context: context,
                          builder: (BuildContext context) => CustomDialog(
                              title: "Would you like to create a free account?",
                              desc: "With an account your data will be securely saved, allowing you to access it from multiple devices",
                              primaryButtonText: "Login to My Account",
                              primaryButtonRoute: "/signup",
                            seconderyButtonText: "back",
                            seconderyButtonRoute: "/home",
                          ));
                      }
                      ),
                ),
                SizedBox(
                  height: _height * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: RaisedButton(
                    elevation: 6.0,
                      color: Colors.blue.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, right: 15.0, left: 15.0),
                        child: Text(
                          "EXIT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        SystemNavigator.pop();
                      }),
                ),

              ],
            ),
          ),
        )),
      ),
    );
  }
}
