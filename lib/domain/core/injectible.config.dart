// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hotstar_bloc/appliation/home_page_bloc/home_page_bloc_bloc.dart'
    as _i14;
import 'package:hotstar_bloc/appliation/new_and_hot/new_and_hot_services_bloc.dart'
    as _i9;
import 'package:hotstar_bloc/appliation/search_data_bloc/search_data_bloc.dart'
    as _i15;
import 'package:hotstar_bloc/appliation/trending_movies/trendingmoviesbloc_bloc.dart'
    as _i13;
import 'package:hotstar_bloc/appliation/trending_movies_bloc/trending_south_india_bloc.dart'
    as _i12;
import 'package:hotstar_bloc/domain/discover/upcomin_services.dart' as _i7;
import 'package:hotstar_bloc/domain/downloads/model_repo.dart' as _i3;
import 'package:hotstar_bloc/domain/home/home_repo.dart' as _i5;
import 'package:hotstar_bloc/domain/search/search_service.dart' as _i10;
import 'package:hotstar_bloc/infrastrucutre/downloads/downloads.dart' as _i4;
import 'package:hotstar_bloc/infrastrucutre/home/tv_data.dart' as _i6;
import 'package:hotstar_bloc/infrastrucutre/search/search.dart' as _i11;
import 'package:hotstar_bloc/infrastrucutre/upcoming/upcoming.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DemoRepo>(() => _i4.DownloadRepo());
    gh.lazySingleton<_i5.HomeRepo>(() => _i6.HomePageRepo());
    gh.lazySingleton<_i7.HotandNewServices>(() => _i8.UpcomingImplemnets());
    gh.factory<_i9.NewAndHotServicesBloc>(
        () => _i9.NewAndHotServicesBloc(gh<_i7.HotandNewServices>()));
    gh.lazySingleton<_i10.SearchResp>(() => _i11.Search());
    gh.factory<_i12.TrendingSouthIndiaBloc>(
        () => _i12.TrendingSouthIndiaBloc(gh<_i5.HomeRepo>()));
    gh.factory<_i13.TrendingmoviesblocBloc>(
        () => _i13.TrendingmoviesblocBloc(gh<_i3.DemoRepo>()));
    gh.factory<_i14.HomePageBlocBloc>(
        () => _i14.HomePageBlocBloc(gh<_i5.HomeRepo>()));
    gh.factory<_i15.SearchDataBloc>(() => _i15.SearchDataBloc(
          gh<_i3.DemoRepo>(),
          gh<_i10.SearchResp>(),
        ));
    return this;
  }
}
