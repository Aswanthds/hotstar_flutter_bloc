import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/home/home_repo.dart';
import 'package:hotstar_bloc/domain/home/language_based_model/language_based_model.dart';
import 'package:injectable/injectable.dart';

part 'trending_south_india_event.dart';
part 'trending_south_india_state.dart';
part 'trending_south_india_bloc.freezed.dart';

@injectable
class TrendingSouthIndiaBloc
    extends Bloc<TrendingSouthIndiaEvent, TrendingSouthIndiaState> {
  final HomeRepo _home;
  TrendingSouthIndiaBloc(this._home)
      : super(TrendingSouthIndiaState.initial()) {
    on<GetMalayalamMovies>((event, emit) async {
      if (state.malayalamMovies.isNotEmpty) {
        emit(
          TrendingSouthIndiaState(
            isLoading: false,
            hasError: false,
            malayalamMovies: state.malayalamMovies,
            tamilMovies: state.tamilMovies,
            upcomingMalayalam: state.upcomingMalayalam,
          ),
        );
        return;
      }

      final result = await _home.getMalayalamMovies();

      final state1 = result.fold((MainFailure l) {
        return const TrendingSouthIndiaState(
          //tvShowDat: state.tvShowDat,
          isLoading: false,
          hasError: true,
          //  southIndian: [],
          malayalamMovies: [], tamilMovies: [],upcomingMalayalam: [],
        );
      }, (r) {
        return TrendingSouthIndiaState(
          isLoading: false,
          hasError: false,
          malayalamMovies: r.results ?? [],
          tamilMovies: state.tamilMovies,
          upcomingMalayalam: state.upcomingMalayalam,
        );
      });
      emit(state1);
    });
    on<GetTamilMovies>((event, emit) async {
      if (state.malayalamMovies.isNotEmpty) {
        emit(
          TrendingSouthIndiaState(
            isLoading: false,
            hasError: false,
            malayalamMovies: state.malayalamMovies,
            tamilMovies: state.tamilMovies,
            upcomingMalayalam: state.upcomingMalayalam,
          ),
        );
        return;
      }

      final result = await _home.getTamilMovies();

      final state2 = result.fold((MainFailure l) {
        return const TrendingSouthIndiaState(
          //tvShowDat: state.tvShowDat,
          isLoading: false,
          hasError: true,
          malayalamMovies: [], tamilMovies: [],
          upcomingMalayalam: [],
        );
      }, (r) {
        return TrendingSouthIndiaState(
          isLoading: false,
          hasError: false,
          malayalamMovies:state.malayalamMovies,
          tamilMovies: r.results ?? [],
          upcomingMalayalam: state.upcomingMalayalam,
        );
      });
      emit(state2);
    });
    on<GetLatestMalayalam>((event, emit) async {
      if (state.malayalamMovies.isNotEmpty) {
        emit(
          TrendingSouthIndiaState(
            isLoading: false,
            hasError: false,
            malayalamMovies: state.malayalamMovies,
            tamilMovies: state.tamilMovies, upcomingMalayalam: state.upcomingMalayalam,
          ),
        );
        return;
      }

      final result = await _home.getUpcomingMalayalam();

      final state2 = result.fold((MainFailure l) {
        return const TrendingSouthIndiaState(
          //tvShowDat: state.tvShowDat,
          isLoading: false,
          hasError: true,
          malayalamMovies: [], tamilMovies: [], upcomingMalayalam: [],
        );
      }, (r) {
        return TrendingSouthIndiaState(
          isLoading: false,
          hasError: false,
          malayalamMovies:state.malayalamMovies,
          tamilMovies: state.tamilMovies, upcomingMalayalam: r.results ?? [],

        );
      });
      emit(state2);
    });
  }
}
