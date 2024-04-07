// Import necessary packages
import 'dart:io';

import 'package:alumni_app/Controller/firebase_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Define a StatefulWidget for the student registration screen
class StudentRegister extends StatefulWidget {
  const StudentRegister({
    super.key,
  });

  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

// Define the state class for the student registration screen
class _StudentRegisterState extends State<StudentRegister> {
  TextEditingController usernameController =TextEditingController();
  TextEditingController userphonenumber =TextEditingController();
  TextEditingController useremailController = TextEditingController();
  TextEditingController userpasswordController = TextEditingController();

  User? currentUser=FirebaseAuth.instance.currentUser;
  
  File? userImage;
  // Initialize ImagePicker instance
  final imagePicker = ImagePicker();

  // Function to pick an image from the gallery
  Future<XFile?> pickImage() async {
    // Allow user to choose between camera or gallery
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery, // Or ImageSource.camera
    );

    return pickedFile;
  }

  Future<XFile?> pickiImage() async {
    // Allow user to choose between camera or gallery
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery, // Or ImageSource.camera
    );

    return pickedFile;
  }

  String path = '';
  @override
  Widget build(BuildContext context) {
    // Scaffold for the student registration screen
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text "Register"
              Container(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text("Register",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500))),
              // GestureDetector widget to pick an image
              GestureDetector(
                onTap: () async {
                  final pickedFile = await pickImage();

                  if (pickedFile != null) {
                    // Display the picked image using the FileImage provider
                    userImage = File(pickedFile.path);
                    setState(() {});
                  }
                },
                child: Container(
                  width: 100, // Adjust the width to change the size
                  height: 100, // Adjust the height to change the size
                  child: (userImage == null)
                      ? CircleAvatar(
                          child: Image.asset('assets/images/user.png'))
                      : CircleAvatar(
                          backgroundImage: FileImage(userImage!),
                        ),
                ),
              ),

              // TextFields for user input
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child:  TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child:  TextFormField(
                controller: userphonenumber,
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child:  TextFormField(
                  controller: useremailController,
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 30),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       hintText: "Place Of Resident",
              //       enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.white),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.black),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 30),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       hintText: "Password",
              //       enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.white),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.black),
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child:  TextFormField(
                  controller: userpasswordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () async{
                    var username=usernameController.text.trim();
                    var phonenumber=userphonenumber.text.trim();
                    var email=useremailController.text.trim();
                    var password=userpasswordController.text.trim();
                    

                    if(useremailController.text.isNotEmpty && userpasswordController.text.isNotEmpty && username.isNotEmpty && userphonenumber.text.isNotEmpty)
                    {
                      await FireBaseApi.createUser(useremailController.text.trim(), userpasswordController.text.trim(), context);
                      FirebaseFirestore.instance.collection("Students").doc(currentUser!.uid).set({
                        "User Name":username,
                        "Phone Number":phonenumber,
                        "email":email,
                        "Created":DateTime.now(),
                        "User Id":currentUser!.uid,
                      });
                    }
                    else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please Enter User Credentials"),),
                      );
                    }
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
