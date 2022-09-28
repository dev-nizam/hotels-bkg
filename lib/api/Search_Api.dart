
import 'dart:convert';


import 'package:hotels/api/Api_Cleint.dart';
import 'package:hotels/model/SearchModel.dart';
import 'package:http/http.dart';

class SearchApi{
  ApiClient apiClient=ApiClient();
  Future<SearchModel>Search()async{
    String path="properties/list";
    Response response=await apiClient.invokeApi(path: path, method: "GET", body: null);
    return SearchModel.fromJson(jsonDecode(response.body));

  }
}