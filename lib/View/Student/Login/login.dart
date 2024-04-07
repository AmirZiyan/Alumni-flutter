import 'package:alumni_app/View/Alumni/Home/home.dart';
import 'package:alumni_app/View/Student/Home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../Constant/text_field.dart';
import '../Home/widget/forgot_password.dart';

import '../Register/register.dart';


class StudentLoginpage extends StatefulWidget {
  StudentLoginpage({super.key});

  // Removed redundant controllers here as they were unnecessarily duplicated

  @override
  State<StudentLoginpage> createState() => _StudentLoginpageState();
}

class _StudentLoginpageState extends State<StudentLoginpage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column( // Changed Center to Column for vertical alignment
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
            children: [
              // Removed unnecessary SizedBoxes used for spacing
              Center(
                child: Container(padding: EdgeInsets.symmetric(vertical: 40),
                  child: const Text(
                    "Welcome Students",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Center(
                child: const Text(
                  "Log in to Continue",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(width: MediaQuery.of(context).size.width*0.9,
                  child: MyTextField(
                    controller: emailController,
                    hintText: "E-mail",
                    obscureText: false, validator: (value) {  },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Container(width: MediaQuery.of(context).size.width*0.9,
                  child: MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true, validator: (value) {  },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPass(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text("Forgot Password", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: Size(300, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () async{
                    var loginemail=emailController.text.trim();
                    var loginpassword=passwordController.text.trim();
                    try{
                        final User? firebaseUser=(await FirebaseAuth.instance.signInWithEmailAndPassword(email: loginemail, password: loginpassword)).user;
                        if(firebaseUser !=null) 
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home1()));
                        }
                        else{ 
                        print('Please enter correct email and password');
                        }
                    }on FirebaseAuthException catch (e){
                        print("Error $e");
                    }
                  },
                  child: Text("Log In", style: TextStyle(color: Colors.white)),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Not a member?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StudentRegister(),));}, child: const Text("Register now",style: TextStyle(color: Colors.blue),))
                ],
              ),
              /*Container(padding: EdgeInsets.symmetric(vertical: 20),
                child: AspectRatio(aspectRatio: 16/9,
                  child: Image(image: AssetImage('assets/image/Stttt.png'),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitHeight,),
                ),
              )*/

            ],
          ),
        ),
      ),
    );
  }
}
