import 'package:json_annotation/json_annotation.dart';

part 'tv_show_data.g.dart';

@JsonSerializable()
class TvShowData {
  @JsonKey(name: 'results')
  List<TvShowDataResult> results;

  TvShowData({required this.results});

  factory TvShowData.fromJson(Map<String, dynamic> json) {
    return _$TvShowDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TvShowDataToJson(this);
}

@JsonSerializable()
class TvShowDataResult {
  @JsonKey(name: 'backdrop_path')
  dynamic backdropPath;
  @JsonKey(name: 'first_air_date')
  String? firstAirDate;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  int? id;
  String? name;
  @JsonKey(name: 'original_name')
  String? originalName;
  String? overview;
  // double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'vote_average')
  num? voteAverage;
  @JsonKey(name: 'vote_count')
  num? voteCount;

  TvShowDataResult({
    this.backdropPath,
    this.firstAirDate,
    this.genreIds,
    this.id,
    this.name,
    this.originalName,
    this.overview,
    //this.popularity,
    this.posterPath,
    this.voteAverage,
    this.voteCount,
  });

  factory TvShowDataResult.fromJson(Map<String, dynamic> json) {
    return _$TvShowDataResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TvShowDataResultToJson(this);
}
