


import 'package:flutter/material.dart';

class Forgt extends StatefulWidget {
  const Forgt({super.key});

  @override
  State<Forgt> createState() => _ForgtState();
}

class _ForgtState extends State<Forgt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Enter Code",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25)),
          const SizedBox(height: 30,),
          Container(padding: EdgeInsets.symmetric(horizontal: 20),
            child: const TextField(decoration: InputDecoration(
                hintText: "Enter Code",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                )
            ),),
          ),const SizedBox(height: 30,),
          ElevatedButton(style: ElevatedButton.styleFrom(foregroundColor: Colors.black,backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),onPressed: (){}, child: const Text("Verify",style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}
