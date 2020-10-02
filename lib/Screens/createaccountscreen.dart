import 'package:Sproject01/Screens/firstscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


TextEditingController _email_cntrlr = TextEditingController();
TextEditingController _password_cntrlr= TextEditingController();
TextEditingController _phone_cntrlr= TextEditingController();
TextEditingController _confirm_password_cntrlr= TextEditingController();
String _error_text= "";
class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Builder(
        builder: (scaffold_context) =>Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10,),
              child:
              Container(
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
              const EdgeInsets.only(left: 20, right: 20, bottom: 10,top: 10),
              child:
              Container(
                height: 50,
                child:
                TextFormField(
                  controller:_phone_cntrlr ,
                  keyboardType: TextInputType.number,
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
                        CupertinoIcons.phone_solid,
                        color: Colors.black,
                      ),
                      hintText: 'Phone',
                      hintStyle: TextStyle(fontSize: 20.0)),
                  style:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 10),
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
              padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // obscuringCharacter: "-",
                  controller:_confirm_password_cntrlr,
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
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(fontSize: 20.0)),
                  style:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, right: 20.0,left: 20.0, ),
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
                    "Create new account",
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
                    else if(_password_cntrlr.text!=_confirm_password_cntrlr.text)
                      {
                        Scaffold.of(scaffold_context).showSnackBar(SnackBar(content: Text("Confirm password is not eqaul to password\n ",style: TextStyle(
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
                      _signUpWithEmail(_email_cntrlr.text,_password_cntrlr.text).then((value) async {
                        if(value=="User Logged in")
                        {
                          _email_cntrlr.clear();
                          _password_cntrlr.clear();
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context){
                                return FirstScreen();

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
          ],
        )),
    );
  }
}
_signUpWithEmail(String email,String password){
return "User Logged in";
}
