import 'package:bloc/bloc.dart';
import 'package:hotels/api/Search_Api.dart';
import 'package:hotels/model/SearchModel.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchApi searchApi=SearchApi();
  late SearchModel searchModel;
  SearchBloc() : super(SearchInitial()) {
    on<getSearch>((event, emit) async {
      emit(SearchLoading());
      try {
        searchModel = await searchApi.Search(event.Location);
        emit(SearchLoaded());
      } catch (e) {
        emit(SearchError());
        print("Error>>>>>>>>>>>>>>>>>>>>>" + e.toString());
      }
    });
  }
// void getSearch1(SearchEvent getSearch,Emitter<SearchState>emit )
}
