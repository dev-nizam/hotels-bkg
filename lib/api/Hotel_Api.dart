


import 'dart:convert';


import 'package:hotels/api/Api_Cleint.dart';
import 'package:hotels/model/HotelModel.dart';
import 'package:http/http.dart';

class HotelApi{
  ApiClient apiClient=ApiClient();
  Future<HotelModel>Hotels(String inDate,String outDate,String id)async{
    String path="properties/list?destinationId=$id&pageNumber=1&pageSize=25&checkIn=$inDate&checkOut=$outDate&adults1=1&sortOrder=PRICE&locale=en_US&currency=USD";
    Response response=await apiClient.invokeApi(path: path, method: "GET", body: null);
    return HotelModel.fromJson(jsonDecode(response.body));

  }
}