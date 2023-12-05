part of 'search_data_bloc.dart';

@freezed
class SearchDataState with _$SearchDataState {
  const factory SearchDataState(
      {required List<Result> searchResult,
      required List<TrendingMoviesDataResult> idleList,
      required bool isLoading,
      required bool isError}) = _SearchDataState;

  factory SearchDataState.inital() => const SearchDataState(
      isError: false, isLoading: false, idleList: [], searchResult: []);
}
