

//
// import 'dart:convert';
//
// import 'package:hotels/HotelModel.dart';
// import 'package:hotels/api/Api_Cleint.dart';
// import 'package:http/http.dart';
//
// class HotelApi{
//   ApiClient apiClient=ApiClient();
//   Future<HotelModel>Hotels()async{
//     String path="properties/list";
//     Response response=await apiClient.invokeApi(path: path, method: "GET", body: null);
//     return HotelModel.fromJson(jsonDecode(response.body));
//
//   }
// }