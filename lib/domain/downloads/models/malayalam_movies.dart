// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'malayalam_movies.freezed.dart';
part 'malayalam_movies.g.dart';

@freezed
class TrendingMovies with _$TrendingMovies {
  const factory TrendingMovies({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "vote_average") required num? voteAverage,
  }) = _TrendingMovies;

  factory TrendingMovies.fromJson(Map<String, dynamic> json) =>
      _$TrendingMoviesFromJson(json);
}
