import 'package:alumni_app/Constant/text_field.dart';
import 'package:alumni_app/View/Alumni/Home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Home/widget/forgot_password.dart';
import '../Register/register.dart';

class LoginScreenAlumini extends StatefulWidget {


  LoginScreenAlumini({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreenAlumini> createState() => _LoginScreenAluminiState();
}

class _LoginScreenAluminiState extends State<LoginScreenAlumini> {

   TextEditingController loginemailController = TextEditingController();
   TextEditingController loginpasswordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Welcome Alumni",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Log in to Continue",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: loginemailController,
                  hintText: "E-Mail",
                  obscureText: false, validator: (value) {  },
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: loginpasswordController,
                  hintText: "Password",
                  obscureText: true, validator: (value) {  },
                ),
                // const SizedBox(height:5),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPassword(),
                            ),
                          );
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 55),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  onPressed: () async{
                    var loginemail=loginemailController.text.trim();
                    var loginpassword=loginpasswordController.text.trim();
                    try{
                        final User? firebaseUser=(await FirebaseAuth.instance.signInWithEmailAndPassword(email: loginemail, password: loginpassword)).user;
                        if(firebaseUser !=null) 
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        }
                        else{ 
                        print('Please enter correct email and password');
                        }
                    }on FirebaseAuthException catch (e){
                        print("Error $e");
                    }
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegScreenAlumni(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register now",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                /* Image(
                  image: const AssetImage('assets/image/AlumniLogin.jpg'),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}