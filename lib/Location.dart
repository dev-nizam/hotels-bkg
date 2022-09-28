import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hotels/Datepicker.dart';
import 'package:hotels/bloc/SearchBloc/search_bloc.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void initState() {
    BlocProvider.of<SearchBloc>(context).add(getSearch());
    super.initState();
  }
  TextEditingController checkoutcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.separated(itemBuilder: (ctx,index){
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title:  GestureDetector(
                    onTap: (){},
                    child: TextField(enabled: false,
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
                  ),
                  content: GestureDetector(
                    onTap: (){
              DatePicker.showDatePicker(context,
              showTitleActions: true,
              minTime: DateTime(2018, 3, 5),
              maxTime: DateTime(2019, 6, 7),  onConfirm: (date) {
                setState(() {
                  checkoutcontroller.text = date.toString().split(' ').first;
                });


              }, currentTime: DateTime.now(), locale: LocaleType.en);

                    },
                    child: TextField(
                       enabled: false,
                      controller: checkoutcontroller,
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
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Text("okay"),
                    ),
                  ],
                ),
              );
            },
            child: ListTile(
              title:Text("Usa"),
            ),
          );
        }, separatorBuilder: (ctx,index){
          return Divider(
            thickness: 4,
          );
        }, itemCount: 100),
      ),
    );
  }
}
