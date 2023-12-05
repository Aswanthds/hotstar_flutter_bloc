// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malayalam_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingMoviesImpl _$$TrendingMoviesImplFromJson(Map<String, dynamic> json) =>
    _$TrendingMoviesImpl(
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      voteAverage: json['vote_average'] as num?,
    );

Map<String, dynamic> _$$TrendingMoviesImplToJson(
        _$TrendingMoviesImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'title': instance.title,
      'vote_average': instance.voteAverage,
    };
