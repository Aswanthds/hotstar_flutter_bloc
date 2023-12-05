import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/downloads/model_repo.dart';
import 'package:hotstar_bloc/domain/downloads/trending_movies_data/trending_movies_data.dart';
import 'package:hotstar_bloc/domain/search/models/search_data_class.dart';
import 'package:hotstar_bloc/domain/search/search_service.dart';
import 'package:injectable/injectable.dart';
part 'search_data_event.dart';
part 'search_data_state.dart';
part 'search_data_bloc.freezed.dart';

@injectable
class SearchDataBloc extends Bloc<SearchDataEvent, SearchDataState> {
  final DemoRepo _downloads;
  final SearchResp _search;

  SearchDataBloc(this._downloads, this._search)
      : super(SearchDataState.inital()) {
    on<_Intialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchDataState(
          searchResult: [],
          idleList: state.idleList,
          isLoading: true,
          isError: false,
        ));
        return;
      }

      //get Trending a
      final result = await _downloads.getOverview();
      final state1 = result.fold(
        (MainFailure fail) {
          return const SearchDataState(
            searchResult: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (r) {
          return SearchDataState(
              searchResult: [],
              idleList: r.results,
              isLoading: false,
              isError: false);
        },
      );
      // show to ui
      emit(state1);
    });
    on<_SearchMovie>((event, emit) async {
      //call search data
      // print("searching ${event.movieQuery}");
      emit(const SearchDataState(
        searchResult: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      final result = await _search.getSearchData(query: event.movieQuery);

      final state2 = result.fold(
        (MainFailure fail) => const SearchDataState(
          searchResult: [],
          idleList: [],
          isLoading: false,
          isError: true,
        ),
        (SearchDataClass r) => SearchDataState(
          searchResult: r.results ?? [],
          idleList: [],
          isLoading: false,
          isError: true,
        ),
      );

      emit(state2);
      // show to ui
    });
  }
}
