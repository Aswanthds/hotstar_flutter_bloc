import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:hotstar_bloc/core/api_endpoints.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/downloads/model_repo.dart';
import 'package:dio/dio.dart';
import 'package:hotstar_bloc/domain/downloads/trending_movies_data/trending_movies_data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DemoRepo)
class DownloadRepo implements DemoRepo {
  @override
  Future<Either<MainFailure, TrendingMoviesData>> getOverview() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // debugPrint(response.data);
        final dataList = TrendingMoviesData.fromJson(response.data);

        debugPrint(dataList.toString());
        return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      debugPrint("Error Occured : $e");
      return const Left(MainFailure.clientFailure());
    }
  }
}
