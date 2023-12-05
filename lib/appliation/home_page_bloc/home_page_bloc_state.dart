part of 'home_page_bloc_bloc.dart';

@freezed
class HomePageBlocState with _$HomePageBlocState {
  const factory HomePageBlocState(
      {required List<TvShowDataResult> tvShowDat,
      required List<TrendingMoviesDataResult> southIndian,
     
      required bool isLoading,
      required bool isError}) = _HomePageBlocState;

  factory HomePageBlocState.inital() {
    return const HomePageBlocState(
        isLoading: false,
        southIndian: [],
        isError: false,
        tvShowDat: [],
        );
  }
}
