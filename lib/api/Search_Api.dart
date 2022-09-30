
import 'dart:convert';


import 'package:hotels/Location.dart';
import 'package:hotels/api/Api_Cleint.dart';
import 'package:hotels/model/SearchModel.dart';
import 'package:http/http.dart';

class SearchApi{
  ApiClient apiClient=ApiClient();
  Future<SearchModel>Search(String location)async{
    String path="locations/v2/search?query=$location&locale=en_US&currency=USD";
    Response response=await apiClient.invokeApi(path: path, method: "GET", body: null);
    return SearchModel.fromJson(jsonDecode(response.body));

  }
}