import 'package:dartz/dartz.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/search/models/search_data_class.dart';

abstract class SearchResp {
  Future<Either<MainFailure, SearchDataClass>> getSearchData(
      {required String query});
}
