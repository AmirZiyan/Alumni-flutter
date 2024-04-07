import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Alumni/Login/login.dart';
import 'Student/Login/login.dart';

class AppScreen extends StatefulWidget {
  @override
  State<AppScreen> createState() => _AppScreenHomeState();
}

class _AppScreenHomeState extends State<AppScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome Back !!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Choose the Type of Account",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),

              // got to alumni page
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreenAlumini(),
                    ),
                  );
                },
                child: const Text(
                  "Alumni",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentLoginpage(),
                    ),
                  );
                },
                child: const Text(
                  "Student",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
