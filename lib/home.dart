import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/Search.dart';
import 'package:hotels/bloc/hotelBloc/hotel_bloc.dart';
import 'package:hotels/model/HotelModel.dart';

class ScreenHome extends StatefulWidget {
   ScreenHome({Key? key, required this.id, required this.inDate, required this.outDate}) : super(key: key);
  final String id ;
  final String inDate ;
  final String outDate ;
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  late HotelModel hotelModel;
  void initState() {
    BlocProvider.of<HotelBloc>(context).add(GetHotel(widget.inDate, widget.outDate,widget.id));
    // TODO: implement initState
    super.initState();
  }

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
      body: BlocBuilder<HotelBloc, HotelState>(
  builder: (context, state) {
    if(state is HotelLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }if(state is HotelError){
      return Center(
        child: Text("something went wrong "),
      );
    }if(state is HotelLoaded) {
      hotelModel = BlocProvider
          .of<HotelBloc>(context)
          .hotelModel;

      return ListView.separated(itemBuilder: (ctx, index) {
        return GestureDetector(
          onTap: () {},

          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/77/f7/18/green-land-farmhouses.jpg?w=900&h=-1&s=1"),
            ),
            title: Text(hotelModel.data!.body!.searchResults!.results![index]
                .name.toString()),
            subtitle: Text("Price ${hotelModel.data!.body!.searchResults!
                .results![index].geoBullets.toString()}"),
          ),
        );
      }, separatorBuilder: (ctx, index) {
        return Divider(
          thickness: 5,
        );
      }, itemCount:hotelModel.data!.body!.searchResults!.results!.length,
      );
    }return Container();
  },
)
    );
  }
}
