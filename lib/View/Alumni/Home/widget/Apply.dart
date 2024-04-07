import 'package:flutter/material.dart';

class ApplyJobs extends StatefulWidget {
  const ApplyJobs({Key? key}) : super(key: key);

  @override
  State<ApplyJobs> createState() => _ApplyJobsState();
}

class _ApplyJobsState extends State<ApplyJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Apply For Jobs"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: ListTile(
                  title: Text(
                    'TCS',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text("Tata Consultancy Services (TCS) is an Indian multinational information technology (IT) services and consulting company headquartered in Mumbai"),
                  tileColor: Colors.blue,
                )),
            SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: ListTile(
                  title: Text(
                    'IBM',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text("Tata Consultancy Services (TCS) is an Indian multinational information technology (IT) services and consulting company headquartered in Mumbai"),
                  tileColor: Colors.blue,
                ))
          ],
        ));
  }
}
