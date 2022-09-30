import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/Location.dart';
import 'package:hotels/bloc/SearchBloc/search_bloc.dart';
import 'package:hotels/model/SearchModel.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late SearchModel searchModel;
  TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Hotels"),
      ),
      body: BlocListener<SearchBloc, SearchState>(
        listener: (context, state) {
         if(state is SearchLoading){
           showDialog(
             barrierDismissible: false,
             context: context,
             builder: (ctx) => AlertDialog(

               content: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisSize: MainAxisSize.min,
                   children: [ CircularProgressIndicator(),]),

             ),
           );
         }if(state is SearchError){
           Center(
             child: Text("something went wrong "),
           );

         }if(state is SearchLoaded){
           searchModel=BlocProvider.of<SearchBloc>(context).searchModel;
           Navigator.push(
               context,
               MaterialPageRoute(builder: (ctx) => Location(searchModel: searchModel,)));
         }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  controller: SearchController,
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
                    BlocProvider.of<SearchBloc>(context).add(getSearch(SearchController.text));

                  },
                  child: Text("go"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
