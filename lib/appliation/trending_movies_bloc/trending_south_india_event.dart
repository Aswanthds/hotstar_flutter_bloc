part of 'trending_south_india_bloc.dart';

@freezed
class TrendingSouthIndiaEvent with _$TrendingSouthIndiaEvent {
  const factory TrendingSouthIndiaEvent.started() = _Started;

  const factory TrendingSouthIndiaEvent.getMalayalamMovies() =
      GetMalayalamMovies;

  const factory TrendingSouthIndiaEvent.getTamilMovies() = GetTamilMovies;
  const factory TrendingSouthIndiaEvent.getLatestMalayalam() = GetLatestMalayalam;
}
