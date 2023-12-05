import 'package:json_annotation/json_annotation.dart';

part 'language_based_model.g.dart';

@JsonSerializable()
class LanguageBasedModel {
  @JsonKey(name: 'results')
  List<LanguageBasedModelResult>? results;

  LanguageBasedModel({this.results});

  factory LanguageBasedModel.fromJson(Map<String, dynamic> json) {
    return _$LanguageBasedModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LanguageBasedModelToJson(this);
}

@JsonSerializable()
class LanguageBasedModelResult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  int? id;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  String? title;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'vote_average')
  num? voteAverage;

  @JsonKey(name: 'vote_count')
  num? voteCount;

   @JsonKey(name: 'genre_ids')
  List<int>? genres;

   String? overview;

  LanguageBasedModelResult({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
    this.genres,
    this.overview,
  });

  factory LanguageBasedModelResult.fromJson(Map<String, dynamic> json) {
    return _$LanguageBasedModelResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LanguageBasedModelResultToJson(this);
}
