
import 'package:flutter/material.dart';
import 'package:ttechic/screens/home_screen.dart';
import 'package:ttechic/screens/signup.dart';
import 'package:ttechic/widgets/already_have_an_account_acheak.dart';

import 'First_screen.dart';

class LogIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController namefield = TextEditingController();
    TextEditingController passwordfield = TextEditingController();

    void navigate(){
      if(passwordfield.text == "tachie123"){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen()));
    }
    }



    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => FirstScreen()));
          },
        ),
        title: Text("TecHie Contractor"),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
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
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Image.asset(
                "assets/logo.png",
                height: size.height * 0.30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.0, left: 40.0),
                child: TextFormField(
                  controller: namefield,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "User Name",
                      fillColor: Colors.blue.shade100),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.0, left: 40.0, top: 20.0),
                child: TextFormField(
                  controller: passwordfield,
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Password",
                      fillColor: Colors.blue.shade100),
                ),
              ),
              SizedBox(
                height: 50.0,
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
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, bottom: 12.0, right: 35.0, left: 35.0),
                      child: Text(
                        "Proceed",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      navigate();
                    }),
              ),
            ],
          ),
        ),
      )
    );

  }


}
