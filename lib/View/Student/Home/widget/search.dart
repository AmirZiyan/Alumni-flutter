

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,title: const Text("Search")),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          const TextField(decoration: InputDecoration(
              hintText: "Search",labelText: "Search Here",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
              )
              ,focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black
              )
          )),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: const Size(350, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.black,foregroundColor: Colors.white),onPressed: (){}, child: const Text("Search"))
        ],
      ),

    );
  }
}
