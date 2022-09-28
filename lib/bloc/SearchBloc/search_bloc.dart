import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hotels/api/Search_Api.dart';
import 'package:hotels/bloc/SearchBloc/search_bloc.dart';
import 'package:hotels/model/SearchModel.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchApi searchApi=SearchApi();
  late SearchModel searchModel;
  SearchBloc() : super(SearchInitial()) {

    on<SearchEvent>((event, emit) => getSearch(event, emit));}
    void getSearch1(SearchEvent playerEvent,Emitter<SearchState>emit )async{
      emit(SearchLoading());
      try{
       searchModel = await searchApi.Search();
        emit(SearchLoaded());
      }catch(e){
        emit(SearchError());
        print("Error>>>>>>>>>>>>>>>>>>>>>"+e.toString());
      }
    }
  }


