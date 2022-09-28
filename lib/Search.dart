import 'package:flutter/material.dart';
import 'package:hotels/Location.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Hotels"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'type in Location...',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Location()));
                },
                child: Text("go"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
