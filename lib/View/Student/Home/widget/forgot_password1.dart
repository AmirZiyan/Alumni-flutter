import 'package:flutter/material.dart';

class EditCode1 extends StatefulWidget {
  const EditCode1({super.key});

  @override
  State<EditCode1> createState() => _EditCode1State();
}

class _EditCode1State extends State<EditCode1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Enter Code",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          const SizedBox(),
          const Text(
            "We have set you code,Please enter",
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Enter Verification Code",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),),
          SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: const Text(
                "Verify",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
