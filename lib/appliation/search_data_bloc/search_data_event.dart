part of 'search_data_bloc.dart';

@freezed
class SearchDataEvent with _$SearchDataEvent {
  const factory SearchDataEvent.intialize() = _Intialize;
  const factory SearchDataEvent.searchMovie({
    required String movieQuery,
  }) = _SearchMovie;
}
