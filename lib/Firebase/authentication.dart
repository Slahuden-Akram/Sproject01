

import 'package:Sproject01/globals.dart';
import 'package:firebase_auth/firebase_auth.dart';

signInWithEmailAndPassword(String email,String password) async{
  print("authentication package sign in method");
  print("\n $email \n $password");
  await auth.createUserWithEmailAndPassword(email: email, password: password);
  print("user created");
  UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
  firebase_user = userCredential.user;
  print("done");
  print(firebase_user.uid);
}