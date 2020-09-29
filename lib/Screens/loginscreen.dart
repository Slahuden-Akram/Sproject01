import 'package:Sproject01/Screens/createaccountscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'forgotpasswordscreen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

TextEditingController _password_cntrlr = TextEditingController();
TextEditingController _email_cntrlr = TextEditingController();
String _error_text= "";
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (scaffold_context) => Stack(
          children: <Widget>[
            Container(
              //todo: if screen background image is to be inserted, insert here as child
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                    ),
                   Container(
//                      height: 250,
//                      width: 250,
//                      child://todo: put logo PNG image here,
                   ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: Container(
                        height: 50,
                        child:
                        TextFormField(
                          controller:_email_cntrlr ,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (emailtxt){
                            print(emailtxt);

                          },
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.blueAccent, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                              ),
                              focusColor: Colors.blueAccent,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.blueAccent, width: 3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(150, 150, 150, 100.0),
                              prefixIcon: Icon(
                                CupertinoIcons.mail_solid,
                                color: Colors.black,
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 20.0)),
                          style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          // obscuringCharacter: "-",
                          controller:_password_cntrlr,
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.blueAccent, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                              ),
                              focusColor: Colors.blueAccent,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.blueAccent, width: 3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(150, 150, 150, 100.0),
                              prefixIcon: Icon(
                               CupertinoIcons.padlock_solid,
                                color: Colors.black,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(fontSize: 20.0)),
                          style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, right: 20.0,left: 20.0, bottom: 70),
                      child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width,
                        height: 45.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side:
                              BorderSide(color: Colors.blueAccent, width: 0)),
                          padding: const EdgeInsets.all(15),
                          color: Colors.blueAccent,
                          child:Text(
                            "Sign in",
                            style: TextStyle(
                            fontSize: 16,
                              color: Colors.white,
                             // fontWeight: FontWeight.bold
                          ),
                          ),
                          //On Pressed
                          onPressed: ()
                          {
                                if(_password_cntrlr.text.trim()==""|| _email_cntrlr.text.trim()=="")
                                {

                                  setState(() {
                                    _error_text= "Fill both fields";
                                    Scaffold.of(scaffold_context).showSnackBar(SnackBar(content: Text("Fill both fields\n ",style: TextStyle(
                                        fontSize: 20
                                    ),),
                                      duration: Duration(milliseconds: 3200),
                                      backgroundColor: Colors.black87,
                                    )
                                    );
                                  });
                                }
                                else if((!_email_cntrlr.text.toString().trim().contains("@"))||(!_email_cntrlr.text.toString().trim().contains(".")))
                                {
                                  Scaffold.of(scaffold_context).showSnackBar(SnackBar(content: Text("Invalid email\n ",style: TextStyle(
                                      fontSize: 20
                                  ),),
                                    duration: Duration(milliseconds: 3200),
                                    backgroundColor: Colors.black87,
                                  )
                                  );
                                }
                                else
                                {
                                  print(_email_cntrlr.text);
                                  print(_password_cntrlr.text);
                                  _signInWithEmail(_email_cntrlr.text,_password_cntrlr.text).then((value) async {
                                    if(value=="User Logged in")
                                    {
                                    _email_cntrlr.clear();
                                    _password_cntrlr.clear();
                                    Navigator.pop(context);
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context){
                                         // todo: return next screen here e.g return FirstScreen();
                                        }
                                    )
                                    );

                                    }
                                    else
                                    {
                                      Scaffold.of(scaffold_context).showSnackBar(SnackBar(content: Text("$value\n ",style: TextStyle(
                                          fontSize: 20
                                      ),),
                                        duration: Duration(milliseconds: 3200),
                                        backgroundColor: Colors.black54,
                                      )
                                      );
                                    }

                                  });

                                }

                            //----------------------------------------------------------Login  button--------------------------------

                          },
                        ),
                      ),
                    ),
                    SignInButton(
                      Buttons.GoogleDark,
                      text: "Sign in with Google",
                      padding: EdgeInsets.only(top: 0,bottom: 0,),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>CreateAccount()));
                        },
                        color:Colors.transparent,
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          //todo: create forgot password function
                         // forgotPassword();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>ForgotPassword()));
                        },
                        color: Colors.transparent,
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//

_signInWithEmail(String email, String password){
  return "User Logged in";
  //todo: code for signing in here
}
