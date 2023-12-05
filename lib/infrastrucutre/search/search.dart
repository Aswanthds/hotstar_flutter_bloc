import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hotstar_bloc/core/api_endpoints.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/search/models/search_data_class.dart';
import 'package:hotstar_bloc/domain/search/search_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchResp)
class Search implements SearchResp {
  @override
  Future<Either<MainFailure, SearchDataClass>> getSearchData(
      {required String query}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.search, queryParameters: {
        'query': query,
      });

      debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        // debugPrint(response.data);
        final dataList = SearchDataClass.fromJson(response.data);

        debugPrint(dataList.results?[0].overview);
        return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      debugPrint("Error : occured $e");
      return const Left(MainFailure.clientFailure());
    }
  }
}
