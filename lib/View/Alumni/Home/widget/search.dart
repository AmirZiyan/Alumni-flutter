import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Here..",
                      helperStyle: TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                      )),
                )
            ),
          ),
        ],
      ),
    );
  }
}
