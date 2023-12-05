// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trendingmoviesbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrendingmoviesblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingmoviesblocEventCopyWith<$Res> {
  factory $TrendingmoviesblocEventCopyWith(TrendingmoviesblocEvent value,
          $Res Function(TrendingmoviesblocEvent) then) =
      _$TrendingmoviesblocEventCopyWithImpl<$Res, TrendingmoviesblocEvent>;
}

/// @nodoc
class _$TrendingmoviesblocEventCopyWithImpl<$Res,
        $Val extends TrendingmoviesblocEvent>
    implements $TrendingmoviesblocEventCopyWith<$Res> {
  _$TrendingmoviesblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
          _$GetDataImpl value, $Res Function(_$GetDataImpl) then) =
      __$$GetDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$TrendingmoviesblocEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
      _$GetDataImpl _value, $Res Function(_$GetDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDataImpl implements GetData {
  const _$GetDataImpl();

  @override
  String toString() {
    return 'TrendingmoviesblocEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements TrendingmoviesblocEvent {
  const factory GetData() = _$GetDataImpl;
}

/// @nodoc
mixin _$TrendingmoviesblocState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TrendingMoviesDataResult> get trendingMovies =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<TrendingMoviesDataResult>>>
      get getOverviewFailureOrSucess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingmoviesblocStateCopyWith<TrendingmoviesblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingmoviesblocStateCopyWith<$Res> {
  factory $TrendingmoviesblocStateCopyWith(TrendingmoviesblocState value,
          $Res Function(TrendingmoviesblocState) then) =
      _$TrendingmoviesblocStateCopyWithImpl<$Res, TrendingmoviesblocState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<TrendingMoviesDataResult> trendingMovies,
      Option<Either<MainFailure, List<TrendingMoviesDataResult>>>
          getOverviewFailureOrSucess});
}

/// @nodoc
class _$TrendingmoviesblocStateCopyWithImpl<$Res,
        $Val extends TrendingmoviesblocState>
    implements $TrendingmoviesblocStateCopyWith<$Res> {
  _$TrendingmoviesblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? trendingMovies = null,
    Object? getOverviewFailureOrSucess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      trendingMovies: null == trendingMovies
          ? _value.trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<TrendingMoviesDataResult>,
      getOverviewFailureOrSucess: null == getOverviewFailureOrSucess
          ? _value.getOverviewFailureOrSucess
          : getOverviewFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<TrendingMoviesDataResult>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingMoviesStateImplCopyWith<$Res>
    implements $TrendingmoviesblocStateCopyWith<$Res> {
  factory _$$TrendingMoviesStateImplCopyWith(_$TrendingMoviesStateImpl value,
          $Res Function(_$TrendingMoviesStateImpl) then) =
      __$$TrendingMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<TrendingMoviesDataResult> trendingMovies,
      Option<Either<MainFailure, List<TrendingMoviesDataResult>>>
          getOverviewFailureOrSucess});
}

/// @nodoc
class __$$TrendingMoviesStateImplCopyWithImpl<$Res>
    extends _$TrendingmoviesblocStateCopyWithImpl<$Res,
        _$TrendingMoviesStateImpl>
    implements _$$TrendingMoviesStateImplCopyWith<$Res> {
  __$$TrendingMoviesStateImplCopyWithImpl(_$TrendingMoviesStateImpl _value,
      $Res Function(_$TrendingMoviesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? trendingMovies = null,
    Object? getOverviewFailureOrSucess = null,
  }) {
    return _then(_$TrendingMoviesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      trendingMovies: null == trendingMovies
          ? _value._trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<TrendingMoviesDataResult>,
      getOverviewFailureOrSucess: null == getOverviewFailureOrSucess
          ? _value.getOverviewFailureOrSucess
          : getOverviewFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<TrendingMoviesDataResult>>>,
    ));
  }
}

/// @nodoc

class _$TrendingMoviesStateImpl implements _TrendingMoviesState {
  const _$TrendingMoviesStateImpl(
      {required this.isLoading,
      required final List<TrendingMoviesDataResult> trendingMovies,
      required this.getOverviewFailureOrSucess})
      : _trendingMovies = trendingMovies;

  @override
  final bool isLoading;
  final List<TrendingMoviesDataResult> _trendingMovies;
  @override
  List<TrendingMoviesDataResult> get trendingMovies {
    if (_trendingMovies is EqualUnmodifiableListView) return _trendingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovies);
  }

  @override
  final Option<Either<MainFailure, List<TrendingMoviesDataResult>>>
      getOverviewFailureOrSucess;

  @override
  String toString() {
    return 'TrendingmoviesblocState(isLoading: $isLoading, trendingMovies: $trendingMovies, getOverviewFailureOrSucess: $getOverviewFailureOrSucess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingMoviesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._trendingMovies, _trendingMovies) &&
            (identical(other.getOverviewFailureOrSucess,
                    getOverviewFailureOrSucess) ||
                other.getOverviewFailureOrSucess ==
                    getOverviewFailureOrSucess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_trendingMovies),
      getOverviewFailureOrSucess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingMoviesStateImplCopyWith<_$TrendingMoviesStateImpl> get copyWith =>
      __$$TrendingMoviesStateImplCopyWithImpl<_$TrendingMoviesStateImpl>(
          this, _$identity);
}

abstract class _TrendingMoviesState implements TrendingmoviesblocState {
  const factory _TrendingMoviesState(
      {required final bool isLoading,
      required final List<TrendingMoviesDataResult> trendingMovies,
      required final Option<Either<MainFailure, List<TrendingMoviesDataResult>>>
          getOverviewFailureOrSucess}) = _$TrendingMoviesStateImpl;

  @override
  bool get isLoading;
  @override
  List<TrendingMoviesDataResult> get trendingMovies;
  @override
  Option<Either<MainFailure, List<TrendingMoviesDataResult>>>
      get getOverviewFailureOrSucess;
  @override
  @JsonKey(ignore: true)
  _$$TrendingMoviesStateImplCopyWith<_$TrendingMoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
