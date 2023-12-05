import 'package:json_annotation/json_annotation.dart';

part 'search_data_class.g.dart';

@JsonSerializable()
class SearchDataClass {
  @JsonKey(name: 'results')
  List<Result>? results;

  SearchDataClass({
    this.results,
  });

  factory SearchDataClass.fromJson(Map<String, dynamic> json) {
    return _$SearchDataClassFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchDataClassToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  String? overview;
  int? id;

  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;
  @JsonKey(name: 'genre_ids')
  List<int>? genres;

  Result({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.id,
    this.genres,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
