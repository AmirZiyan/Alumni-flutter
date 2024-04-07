import 'package:alumni_app/View/Alumni/Home/widget/Apply.dart';
import 'package:alumni_app/View/Alumni/Home/widget/add_jobs.dart';
import 'package:alumni_app/View/Alumni/Home/widget/fund_raising.dart';
import 'package:alumni_app/View/Alumni/Home/widget/get_together.dart';
import 'package:alumni_app/View/Alumni/Home/widget/notification.dart';
import 'package:alumni_app/View/Alumni/Home/widget/sponsorship.dart';
import 'package:alumni_app/View/Alumni/Home/widget/talks.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeBottombarState();
}

class _HomeBottombarState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationAlumniScreen()));
            },
            icon: Icon(Icons.notifications),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          // Reduced opacity of the background
        ),
        child: Stack(
          children: [
            // Image(
            //   image: AssetImage(''),
            //   fit: BoxFit.cover, // Ensure the image covers the entire screen
            //   height: double.infinity,
            //   width: double.infinity,// Make the image cover the entire height
            // ),
            Center(
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
                          SizedBox(height: 25),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ApplyJobs()));
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/apply.webp',
                                  height: 113,
                                  width: 106,
                                ),
                                const Text(
                                  "Apply Jobs",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Talks()));
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/Talks1.webp',
                                  height: 113,
                                  width: 106,
                                ),
                                const Text(
                                  "Talks",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fund()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Fund1.webp',
                                height: 113,
                                width: 106,
                              ),
                              const Text(
                                "Fund Raising",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            /*Image.asset(
                              'assets/image/chat1.png',
                              height: 113,
                              width: 106,
                            ),*/
                            const Text(
                              "Chat",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sponsor()));
                          },
                          child: Column(
                            children: [
                              // Image.asset(
                              //   'assets/images/Sponsor1.png',
                              //   height: 113,
                              //   width: 106,
                              // ),
                              const Text(
                                "Sponsorship",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Gettogether()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/get2.webp',
                                height: 113,
                                width: 106,
                              ),
                              const Text(
                                "Get Together",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddJobs()));
                      },
                      child: const Text(
                        "Add Jobs",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
