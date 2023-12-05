import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/downloads/trending_movies_data/trending_movies_data.dart';
import 'package:hotstar_bloc/domain/home/home_repo.dart';
import 'package:hotstar_bloc/domain/home/tv_show_data/tv_show_data.dart';
import 'package:injectable/injectable.dart';

part 'home_page_bloc_event.dart';
part 'home_page_bloc_state.dart';
part 'home_page_bloc_bloc.freezed.dart';

@injectable
class HomePageBlocBloc extends Bloc<HomePageBlocEvent, HomePageBlocState> {
  final HomeRepo _home;
  HomePageBlocBloc(this._home) : super(HomePageBlocState.inital()) {
    on<GetTvSeriesData>((event, emit) async {
      if (state.tvShowDat.isNotEmpty) {
        emit(
          HomePageBlocState(
            tvShowDat: state.tvShowDat,
            isLoading: false,
            isError: false,
            southIndian: state.southIndian,
           // malayalamMovies: state.malayalamMovies,
          ),
        );
        return;
      }

      final result = await _home.getTvData();

      final state1 = result.fold((MainFailure l) {
        return const HomePageBlocState(
          tvShowDat: [],
          isLoading: false,
          isError: true,
          southIndian: [],
        //  malayalamMovies: [],
        );
      }, (r) {
        return HomePageBlocState(
          tvShowDat: r.results,
          isLoading: false,
          isError: false,
          southIndian: state.southIndian,
        //  malayalamMovies: state.malayalamMovies,
        );
      });
      emit(state1);
    });

    on<GetSouthIndian>((event, emit) async {
      if (state.southIndian.isNotEmpty) {
        emit(
          HomePageBlocState(
            tvShowDat: state.tvShowDat,
            isLoading: false,
            isError: false,
            southIndian: state.southIndian,
         //malayalamMovies: state.malayalamMovies,
          ),
        );
        return;
      }

      final result = await _home.getSouthIndian();

      final state2 = result.fold((MainFailure l) {
        return const HomePageBlocState(
          tvShowDat: [],
          isLoading: false,
          isError: true,
          southIndian: [],
        //  malayalamMovies: [],
        );
      }, (r) {
        return HomePageBlocState(
            tvShowDat: state.tvShowDat,
            isLoading: false,
            isError: false,
            southIndian: r.results,
            // malayalamMovies: state.malayalamMovies
            
            );
      });
      emit(state2);
    });

  }
}
