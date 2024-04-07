import 'package:flutter/material.dart';


import 'forgot_password1.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
          const SizedBox(height: 30,),
          Container(padding: EdgeInsets.symmetric(horizontal: 30),
            child: const TextField(decoration: InputDecoration(
                hintText: "Enter E-mail id",
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)
                ),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
            ),),
          ),
          SizedBox(height: 20,),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),onPressed: (){Navigator.push(context, MaterialPageRoute(builder:
              (context)=>const EditCode1()));}, child: const Text("Reset Password",style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}
