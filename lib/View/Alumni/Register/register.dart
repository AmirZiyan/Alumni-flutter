import 'package:alumni_app/Controller/firebase_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Widget/code_screen.dart';

class RegScreenAlumni extends StatefulWidget {
  const RegScreenAlumni({Key? key});

  @override
  State<RegScreenAlumni> createState() => _RegScreenAlumniState();
}

class _RegScreenAlumniState extends State<RegScreenAlumni> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Register",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                // Wrap the TextField with Container
                padding: const EdgeInsets.symmetric(
                    horizontal: 10), // Add padding to the Container
                decoration: BoxDecoration(
                  // Apply solid background color to the Container
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      10), // Add border radius to match ElevatedButton
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter E-mail id",
                    border: InputBorder.none, // Remove border of TextField
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                // Wrap the TextField with Container
                padding: const EdgeInsets.symmetric(
                    horizontal: 10), // Add padding to the Container
                decoration: BoxDecoration(
                  // Apply solid background color to the Container
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      10), // Add border radius to match ElevatedButton
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: InputBorder.none, // Remove border of TextField
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.blue,
              ),
              onPressed: () async {
    try {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        await FireBaseApi.createUser(
          emailController.text.trim(),
          passwordController.text.trim(),
          context
        );

        // Add data to Firestore
        await FirebaseFirestore.instance.collection("Alumni").doc().set({
          "Email": emailController.text.trim(),
          "Created": DateTime.now(),
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please Enter Valid Email and Password'),
          ),
        );
      }
    } catch (e) {
      // Handle any exceptions here
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('An error occurred while creating user.'),
        ),
      );
    }
  },
  child: const Text(
    "Create User",
    style: TextStyle(color: Colors.white),
  ),
),
          ],
        ),
      ),
    );
  }
}
