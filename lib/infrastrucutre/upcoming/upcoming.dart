import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hotstar_bloc/core/api_endpoints.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/discover/models/upcoming_data.dart';
import 'package:hotstar_bloc/domain/discover/upcomin_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HotandNewServices)
class UpcomingImplemnets implements HotandNewServices {
  @override
  Future<Either<MainFailure, UpcomingData>> getNewwestReleases() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);

      debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = UpcomingData.fromJson(response.data);

        debugPrint(dataList.results.toString());
        return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      debugPrint('Error happened while data : $e');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, UpcomingData>> getUpcomingReleases() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.upcoming);

      debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = UpcomingData.fromJson(response.data);

        debugPrint(dataList.results.toString());
        return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      debugPrint('Error happened while data : $e');
      return const Left(MainFailure.clientFailure());
    }
  }
}
