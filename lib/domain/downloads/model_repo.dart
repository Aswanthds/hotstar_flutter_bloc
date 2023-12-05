import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:hotstar_bloc/domain/downloads/trending_movies_data/trending_movies_data.dart';

abstract class DemoRepo {
  Future<Either<MainFailure, TrendingMoviesData>> getOverview();
}
