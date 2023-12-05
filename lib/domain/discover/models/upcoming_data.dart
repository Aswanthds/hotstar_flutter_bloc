import 'package:json_annotation/json_annotation.dart';

part 'upcoming_data.g.dart';

@JsonSerializable()
class UpcomingData {
  Dates? dates;
  int? page;
  @JsonKey(name: 'results')
  List<UpcomingDataResult> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  UpcomingData({
    this.dates,
    this.page,
    required this.results,
    this.totalPages,
    this.totalResults,
  });

  factory UpcomingData.fromJson(Map<String, dynamic> json) {
    return _$UpcomingDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcomingDataToJson(this);
}

@JsonSerializable()
class UpcomingDataResult {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;
  bool? video;
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;

  UpcomingDataResult({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory UpcomingDataResult.fromJson(Map<String, dynamic> json) {
    return _$UpcomingDataResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcomingDataResultToJson(this);
}

@JsonSerializable()
class Dates {
  String? maximum;
  String? minimum;

  Dates({this.maximum, this.minimum});

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);

  Map<String, dynamic> toJson() => _$DatesToJson(this);
}
