part of 'trending_south_india_bloc.dart';

@freezed
class TrendingSouthIndiaState with _$TrendingSouthIndiaState {
  const factory TrendingSouthIndiaState({
    required List<LanguageBasedModelResult> malayalamMovies,
       required List<LanguageBasedModelResult> tamilMovies,
        required List<LanguageBasedModelResult> upcomingMalayalam,
    required bool isLoading,
    required bool hasError,
  }) = _TreendingSouthIndian;

  factory TrendingSouthIndiaState.initial() => const TrendingSouthIndiaState(
        hasError: false,
        isLoading: false,
        malayalamMovies: [],
        tamilMovies: [],
        upcomingMalayalam:[],
      );
}
