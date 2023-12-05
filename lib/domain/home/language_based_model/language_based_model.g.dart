// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_based_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageBasedModel _$LanguageBasedModelFromJson(Map<String, dynamic> json) =>
    LanguageBasedModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) =>
              LanguageBasedModelResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageBasedModelToJson(LanguageBasedModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

LanguageBasedModelResult _$LanguageBasedModelResultFromJson(
        Map<String, dynamic> json) =>
    LanguageBasedModelResult(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      voteAverage: json['vote_average'] as num?,
      voteCount: json['vote_count'] as num?,
      genres:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$LanguageBasedModelResultToJson(
        LanguageBasedModelResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'genre_ids': instance.genres,
      'overview': instance.overview,
    };
