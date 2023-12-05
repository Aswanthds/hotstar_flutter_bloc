import 'package:json_annotation/json_annotation.dart';

part 'trending_movies_data.g.dart';

@JsonSerializable()
class TrendingMoviesData {
  List<TrendingMoviesDataResult> results;

  TrendingMoviesData({required this.results});

  factory TrendingMoviesData.fromJson(Map<String, dynamic> json) {
    return _$TrendingMoviesDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendingMoviesDataToJson(this);
}

@JsonSerializable()
class TrendingMoviesDataResult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  int? id;
  String? title;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  double? popularity;
  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;

  TrendingMoviesDataResult({
    this.backdropPath,
    this.id,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.genreIds,
    this.popularity,
    this.releaseDate,
    this.voteAverage,
    this.voteCount,
  });

  factory TrendingMoviesDataResult.fromJson(Map<String, dynamic> json) {
    return _$TrendingMoviesDataResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendingMoviesDataResultToJson(this);
}
