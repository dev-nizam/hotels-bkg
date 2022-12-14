import 'package:flutter/material.dart';
import 'package:hotels/Search.dart';
import 'package:hotels/bloc/SearchBloc/search_bloc.dart';
import 'package:hotels/bloc/hotelBloc/hotel_bloc.dart';
import 'package:hotels/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MultiBlocProvider(
      providers: [
      BlocProvider(create: (BuildContext context)=>SearchBloc()),
      BlocProvider(create: (BuildContext context)=>HotelBloc()),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SearchBar(),
    );
  }
}
