import 'package:alumni_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'View/app_screen.dart';
void main() async{
  // SystemChrome.setEnabledSystemUIOverlays([]);
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const hmpg());
}

class hmpg extends StatefulWidget {
  const hmpg({super.key});

  @override
  State<hmpg> createState() => _hmpgState();
}

class _hmpgState extends State<hmpg> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AppScreen(),
    );
  }
}

