// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_movies_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingMoviesData _$TrendingMoviesDataFromJson(Map<String, dynamic> json) =>
    TrendingMoviesData(
      results: (json['results'] as List<dynamic>)
          .map((e) =>
              TrendingMoviesDataResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrendingMoviesDataToJson(TrendingMoviesData instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

TrendingMoviesDataResult _$TrendingMoviesDataResultFromJson(
        Map<String, dynamic> json) =>
    TrendingMoviesDataResult(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      popularity: (json['popularity'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$TrendingMoviesDataResultToJson(
        TrendingMoviesDataResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
