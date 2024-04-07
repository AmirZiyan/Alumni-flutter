import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Notification"),),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action for raising money
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[300],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              child: ListTile(
                title: Text(
                  "Raise Money",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "For Emergency Cases",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Text("2 hrs ago",style: TextStyle(color: Colors.white54),),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action for sponsoring student
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[300],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              child: ListTile(
                title: Text(
                  "Sponsor Student",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Student Details",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Text("39 min ago",style: TextStyle(color: Colors.white54),),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action for work
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[300],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              child: ListTile(
                title: Text(
                  "Work",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Text("23 sec ago",style: TextStyle(color: Colors.white54),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
