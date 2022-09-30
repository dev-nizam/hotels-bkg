import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hotels/api/Hotel_Api.dart';
import 'package:hotels/bloc/hotelBloc/hotel_bloc.dart';
import 'package:hotels/model/HotelModel.dart';
import 'package:meta/meta.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelApi hotelApi=HotelApi();
 late HotelModel hotelModel;
  HotelBloc() : super(HotelInitial()) {
    on<GetHotel>((event, emit)async {
      emit(HotelLoading());
      try{
        hotelModel = await hotelApi.Hotels(event.inDate, event.outDate,event.id);
        emit(HotelLoaded());
      }catch(e){
        emit(HotelError());
        print("Error>>>>>>>>>>>>>>>>>>>>>" + e.toString());

      }
    });
  }
}
