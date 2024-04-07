import 'package:flutter/material.dart';

class AddJobs extends StatefulWidget {
  const AddJobs({super.key});

  @override
  State<AddJobs> createState() => _AddJobsState();
}

class _AddJobsState extends State<AddJobs> {
  get maxLines => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 40)),
            const Text("Job Details",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter the Name of the Company",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter the location",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter the Salary Details",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Description Details",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
                maxLines: 6,
                minLines: 1,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Requirements details",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Company Details",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
                maxLines: 6,
                minLines: 1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      "Request Edit",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
