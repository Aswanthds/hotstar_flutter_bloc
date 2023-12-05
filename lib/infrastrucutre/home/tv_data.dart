import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hotstar_bloc/core/api_endpoints.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/downloads/trending_movies_data/trending_movies_data.dart';
import 'package:hotstar_bloc/domain/home/home_repo.dart';
import 'package:hotstar_bloc/domain/home/language_based_model/language_based_model.dart';
import 'package:hotstar_bloc/domain/home/tv_show_data/tv_show_data.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

@LazySingleton(as: HomeRepo)
class HomePageRepo implements HomeRepo {
  @override
  Future<Either<MainFailure, TvShowData>> getTvData() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.southIndian);
      //debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = TvShowData.fromJson(response.data);

        //debugPrint(dataList.results[0].overview);
        return Right(dataList);

        //  return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //debugPrint("Error : occured $e");
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, TrendingMoviesData>> getSouthIndian() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.southIndianMovies);
      //debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = TrendingMoviesData.fromJson(response.data);

        //debugPrint(dataList.results[0].overview);
        return Right(dataList);

        //  return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //debugPrint("Error : occured $e");
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LanguageBasedModel>> getMalayalamMovies() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingMalayalamMovies);
      //debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = LanguageBasedModel.fromJson(response.data);

        //debugPrint(dataList.results?[0].title);
        return Right(dataList);

        //  return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //debugPrint("Error : occured $e");
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LanguageBasedModel>> getTamilMovies() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.tamilMovies);
      //debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = LanguageBasedModel.fromJson(response.data);

        //debugPrint(dataList.results?[0].title);

        return Right(dataList);

        //  return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //debugPrint("Error : occured $e");
      return const Left(MainFailure.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailure, LanguageBasedModel>> getUpcomingMalayalam()async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.tenseDramas);
      debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dataList = LanguageBasedModel.fromJson(response.data);

        debugPrint(dataList.results?[0].title);

        return Right(dataList);

        //  return Right(dataList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      debugPrint("Error : occured $e");
      return const Left(MainFailure.clientFailure());
    }
  }
}
