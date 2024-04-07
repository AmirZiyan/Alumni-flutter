import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class FireBaseApi {
  // Create User With Email id and password

  static createUser(String email, String password, BuildContext context) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('User created successfully'),),),);
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            error.toString(),
          ),
        ),
      );
    }
  }



static  resetPassword(){

}
}
