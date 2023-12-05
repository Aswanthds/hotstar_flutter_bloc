import 'package:dartz/dartz.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/discover/models/upcoming_data.dart';

abstract class HotandNewServices {
  Future<Either<MainFailure, UpcomingData>> getNewwestReleases();
  Future<Either<MainFailure, UpcomingData>> getUpcomingReleases();
}
