// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'malayalam_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingMovies _$TrendingMoviesFromJson(Map<String, dynamic> json) {
  return _TrendingMovies.fromJson(json);
}

/// @nodoc
mixin _$TrendingMovies {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  num? get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingMoviesCopyWith<TrendingMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingMoviesCopyWith<$Res> {
  factory $TrendingMoviesCopyWith(
          TrendingMovies value, $Res Function(TrendingMovies) then) =
      _$TrendingMoviesCopyWithImpl<$Res, TrendingMovies>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "vote_average") num? voteAverage});
}

/// @nodoc
class _$TrendingMoviesCopyWithImpl<$Res, $Val extends TrendingMovies>
    implements $TrendingMoviesCopyWith<$Res> {
  _$TrendingMoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingMoviesImplCopyWith<$Res>
    implements $TrendingMoviesCopyWith<$Res> {
  factory _$$TrendingMoviesImplCopyWith(_$TrendingMoviesImpl value,
          $Res Function(_$TrendingMoviesImpl) then) =
      __$$TrendingMoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "vote_average") num? voteAverage});
}

/// @nodoc
class __$$TrendingMoviesImplCopyWithImpl<$Res>
    extends _$TrendingMoviesCopyWithImpl<$Res, _$TrendingMoviesImpl>
    implements _$$TrendingMoviesImplCopyWith<$Res> {
  __$$TrendingMoviesImplCopyWithImpl(
      _$TrendingMoviesImpl _value, $Res Function(_$TrendingMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$TrendingMoviesImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingMoviesImpl implements _TrendingMovies {
  const _$TrendingMoviesImpl(
      {@JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "vote_average") required this.voteAverage});

  factory _$TrendingMoviesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingMoviesImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "vote_average")
  final num? voteAverage;

  @override
  String toString() {
    return 'TrendingMovies(posterPath: $posterPath, title: $title, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingMoviesImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath, title, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingMoviesImplCopyWith<_$TrendingMoviesImpl> get copyWith =>
      __$$TrendingMoviesImplCopyWithImpl<_$TrendingMoviesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingMoviesImplToJson(
      this,
    );
  }
}

abstract class _TrendingMovies implements TrendingMovies {
  const factory _TrendingMovies(
          {@JsonKey(name: "poster_path") required final String? posterPath,
          @JsonKey(name: "title") required final String? title,
          @JsonKey(name: "vote_average") required final num? voteAverage}) =
      _$TrendingMoviesImpl;

  factory _TrendingMovies.fromJson(Map<String, dynamic> json) =
      _$TrendingMoviesImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "vote_average")
  num? get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$TrendingMoviesImplCopyWith<_$TrendingMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
