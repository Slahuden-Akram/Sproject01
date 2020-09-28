import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'login.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void fun1() {
  //   setState(() {
  //     NewLogin();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(255, 121, 66, 1.0),
              Color.fromRGBO(247, 54, 109, 1.0),
            ]),
      ),
      child: ListView(children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 80),
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
                width: 200,
                child: Text(
                  "company intro will be here",
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
                margin: const EdgeInsets.only(top: 50, bottom: 0.0),
                width: 270,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.facebookF,
                        color: Color.fromRGBO(247, 54, 109, 1.0),
                        size: 18,
                      ),
                      Text(
                        " | Sign in with Facebook",
                        style: TextStyle(
                          color: Color.fromRGBO(247, 54, 109, 1.0),
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 0.0),
                width: 270,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromRGBO(247, 54, 109, 1.0),
                        size: 18,
                      ),
                      Text(
                        " | Sign in with Twitter",
                        style: TextStyle(
                          color: Color.fromRGBO(247, 54, 109, 1.0),
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 0.0),
                width: 270,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewLogin()));
                  },
                  color: Colors.white,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color.fromRGBO(247, 54, 109, 1.0),
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  "ALREADY REGISTERED? SIGN IN",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
