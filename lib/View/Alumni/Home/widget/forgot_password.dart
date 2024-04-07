import 'package:flutter/material.dart';
import 'forgot_password1.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              ("Enter E-mail Id"),
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(padding: EdgeInsets.symmetric(horizontal: 20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter E-mail",
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 5.0)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1.0))
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(foregroundColor: Colors.yellow,fixedSize: Size(350, 60),backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),onPressed: (){Navigator.push(context, MaterialPageRoute(builder:
                (context)=>const Forgt()));}, child: const Text("Submit",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
