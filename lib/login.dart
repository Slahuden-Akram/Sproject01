import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewLogin extends StatefulWidget {
  @override
  _NewLoginState createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.teal,
              ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Icon(
                  FontAwesomeIcons.heartBroken,
                  color: Color.fromRGBO(247, 54, 109, 1.0),
                  size: 70,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Company",
                      style: TextStyle(
                          color: Color.fromRGBO(245, 51, 111, 1.0),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway'),
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 50),
                width: double.infinity,
                child: Text(
                  "Company intro will be here",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway'),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 0.0),
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                  cursorColor: Colors.black,
                  maxLength: 30,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 0.0),
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                  cursorColor: Colors.black,
                  maxLength: 30,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 50.0, left: 50.0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Create"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
