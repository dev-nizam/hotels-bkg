import 'package:flutter/material.dart';
import 'package:hotels/MySearchdelegate.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  bool isClicked = false;
  bool isLocationClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLocationClicked ?
        TextField(
          decoration: InputDecoration(
            hintText: 'type in Location...',
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ):isClicked ? TextField(
          decoration: InputDecoration(
            hintText: 'type in hotel name...',
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ): Text("Hotels",style: TextStyle(fontSize: 20),),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              isClicked = !isClicked;
            });
          },
              icon: Icon(Icons.search)),

          IconButton(onPressed: (){
            setState(() {
              isLocationClicked = !isLocationClicked;
            });
          }, icon: Icon(Icons.location_on_outlined)),
        ],
      ),
      body: ListView.separated(itemBuilder: (ctx,index){
        return GestureDetector(
          onTap: (){},

          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/77/f7/18/green-land-farmhouses.jpg?w=900&h=-1&s=1"),
            ),
            title: Text("Greenland"),
            subtitle: Text("Price ${2000}"),
          ),
        );

      }, separatorBuilder: (ctx,index){
return  Divider(
thickness: 5,
);
    }, itemCount:10,
      )
    );
  }
}
