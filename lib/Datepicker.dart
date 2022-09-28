import 'package:flutter/material.dart';

class DatePicker1 extends StatefulWidget {
  const DatePicker1({Key? key}) : super(key: key);

  @override
  State<DatePicker1> createState() => _DatePicker1State();
}

class _DatePicker1State extends State<DatePicker1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 30,right: 30),
        child: Container(
          child: Column(
            children: [
              TextField(
                onTap: (){},
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'Check in',
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
              SizedBox(height: 5,),
              TextField(
                onTap: (){},
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'Check Out',
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
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (ctx) => Location()));
                },
                child: Text("Submitted"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
