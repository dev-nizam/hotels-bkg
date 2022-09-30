import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hotels/home.dart';
import 'package:hotels/model/SearchModel.dart';

class Location extends StatefulWidget {
  const Location({Key? key, required this.searchModel}) : super(key: key);
  final SearchModel searchModel;

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  TextEditingController checkout2controller = TextEditingController();
  TextEditingController checkout1controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (ctx) {
                      GlobalKey<FormState> formKey = GlobalKey();
                      return AlertDialog(
                        content: Form(
                          key: formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      minTime: DateTime(2018, 3, 5),
                                      maxTime: DateTime(2025, 6, 7),
                                      onConfirm: (date) {
                                    setState(() {
                                      checkout1controller.text =
                                          date.toString().split(' ').first;
                                    });
                                  },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.en);
                                },
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Empty";
                                    }
                                    return null;
                                  },
                                  controller: checkout1controller,
                                  enabled: false,
                                  decoration: InputDecoration(
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red)
                                    ),
                                    focusColor: Colors.black,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
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
                              GestureDetector(
                                onTap: () {
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      minTime: DateTime.now(),
                                      maxTime: DateTime(2025, 6, 7),
                                      onConfirm: (date) {
                                    setState(() {
                                      checkout2controller.text =
                                          date.toString().split(' ').first;
                                    });
                                  },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.en);
                                },
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Empty";
                                    }
                                    return null;
                                  },
                                  enabled: false,
                                  controller: checkout2controller,
                                  decoration: InputDecoration(
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    ),
                                    focusColor: Colors.black,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
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
                              ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) => ScreenHome(
                                              id: widget
                                                  .searchModel
                                                  .suggestions![index]
                                                  .entities![0]
                                                  .destinationId
                                                  .toString(),
                                              inDate: checkout1controller.text,
                                              outDate: checkout2controller.text,
                                            )));
                                  }
                                },
                                child: const Text("okay"),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: ListTile(
                title: Text(
                  (widget.searchModel.suggestions![index].entities!.isNotEmpty
                      ? widget.searchModel.suggestions![index].entities![0].name
                          .toString()
                      : "No data"),
                ),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider(
              thickness: 4,
            );
          },
          itemCount: widget.searchModel.suggestions!.length,
        ),
      ),
    );
  }
}
