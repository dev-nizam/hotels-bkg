part of 'hotel_bloc.dart';

@immutable
abstract class HotelEvent {}
class GetHotel extends HotelEvent{
final String inDate;
final String outDate;
final String id;

  GetHotel(this.inDate, this.outDate, this.id);
}