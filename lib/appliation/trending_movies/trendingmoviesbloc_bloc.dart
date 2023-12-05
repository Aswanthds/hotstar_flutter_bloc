import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/downloads/model_repo.dart';
import 'package:hotstar_bloc/domain/downloads/trending_movies_data/trending_movies_data.dart';
import 'package:injectable/injectable.dart';

part 'trendingmoviesbloc_event.dart';
part 'trendingmoviesbloc_state.dart';
part 'trendingmoviesbloc_bloc.freezed.dart';

@injectable
class TrendingmoviesblocBloc
    extends Bloc<TrendingmoviesblocEvent, TrendingmoviesblocState> {
  final DemoRepo _trending;
  TrendingmoviesblocBloc(this._trending)
      : super(TrendingmoviesblocState.inital()) {
    on<TrendingmoviesblocEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, getOverviewFailureOrSucess: none()));
      final Either<MainFailure, TrendingMoviesData> optionDownload =
          await _trending.getOverview();

      debugPrint(optionDownload.toString());
      emit(
        optionDownload.fold(
          (l) => state.copyWith(
            isLoading: false,
            getOverviewFailureOrSucess: Some(
              Left(l),
            ),
          ),
          (r) => state.copyWith(
            isLoading: false,
            trendingMovies: r.results,
            getOverviewFailureOrSucess: Some(Right(r.results)),
          ),
        ),
      );
    });
  }
}
