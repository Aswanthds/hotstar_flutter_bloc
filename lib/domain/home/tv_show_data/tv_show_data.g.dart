// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvShowData _$TvShowDataFromJson(Map<String, dynamic> json) => TvShowData(
      results: (json['results'] as List<dynamic>)
          .map((e) => TvShowDataResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TvShowDataToJson(TvShowData instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

TvShowDataResult _$TvShowDataResultFromJson(Map<String, dynamic> json) =>
    TvShowDataResult(
      backdropPath: json['backdrop_path'],
      firstAirDate: json['first_air_date'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      voteAverage: json['vote_average'] as num?,
      voteCount: json['vote_count'] as num?,
    );

Map<String, dynamic> _$TvShowDataResultToJson(TvShowDataResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
