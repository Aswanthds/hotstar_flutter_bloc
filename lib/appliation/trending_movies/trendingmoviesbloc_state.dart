part of 'trendingmoviesbloc_bloc.dart';

@freezed
class TrendingmoviesblocState with _$TrendingmoviesblocState {
  const factory TrendingmoviesblocState({
    required bool isLoading,
    required List<TrendingMoviesDataResult> trendingMovies,
    required Option<Either<MainFailure, List<TrendingMoviesDataResult>>>
        getOverviewFailureOrSucess,
  }) = _TrendingMoviesState;

  factory TrendingmoviesblocState.inital() {
    return const TrendingmoviesblocState(
        isLoading: false,
        getOverviewFailureOrSucess: None(),
        trendingMovies: []);
  }
}
