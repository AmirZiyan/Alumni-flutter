import 'package:flutter/material.dart';

class CodeScreenAlumni extends StatefulWidget {
  const CodeScreenAlumni({super.key});

  @override
  State<CodeScreenAlumni> createState() => _CodeScreenAlumniState();
}

class _CodeScreenAlumniState extends State<CodeScreenAlumni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                  hintText: "Verification Code",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: const Text("Submit",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
