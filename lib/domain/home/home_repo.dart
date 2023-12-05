import 'package:dartz/dartz.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/downloads/trending_movies_data/trending_movies_data.dart';
import 'package:hotstar_bloc/domain/home/language_based_model/language_based_model.dart';
import 'package:hotstar_bloc/domain/home/tv_show_data/tv_show_data.dart';

abstract class HomeRepo {
  Future<Either<MainFailure, TvShowData>> getTvData();
  Future<Either<MainFailure, TrendingMoviesData>> getSouthIndian();
  Future<Either<MainFailure, LanguageBasedModel>> getMalayalamMovies();
  Future<Either<MainFailure, LanguageBasedModel>> getTamilMovies();
  Future<Either<MainFailure, LanguageBasedModel>> getUpcomingMalayalam();
}
