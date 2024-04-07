import 'package:flutter/material.dart';
import 'package:alumni_app/View/Alumni/Home/widget/talks.dart';
import 'package:alumni_app/View/Student/Home/widget/apply_jobs.dart';
import 'package:alumni_app/View/Student/Home/widget/notification.dart';
import 'package:alumni_app/View/Student/Home/widget/talks.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
            },
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 25,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ApplyJobStud()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/apply.webp',
                            height: 123,
                            width: 116,
                          ),
                          const Text(
                            "Apply Jobs",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Talksview(title: 'Title', speaker: 'Speaker', description: 'Description', date: DateTime.now(), time: TimeOfDay.now())));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Talks1.webp',
                            height: 123,
                            width: 116,
                          ),
                          const Text(
                            "Talks",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add code here to navigate to the Fund Raising screen
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Fund1.webp',
                          height: 123,
                          width: 116,
                        ),
                        const Text(
                          "Fund Raising",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      // Image.asset(
                      //   'assets/images/chat2.jpg',
                      //   height: 123,
                      //   width: 116,
                      // ),
                      const Text(
                        "Chat",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}