import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotstar_bloc/core/failures/main_failure.dart';
import 'package:hotstar_bloc/domain/discover/models/upcoming_data.dart';
import 'package:hotstar_bloc/domain/discover/upcomin_services.dart';
import 'package:injectable/injectable.dart';

part 'new_and_hot_services_event.dart';
part 'new_and_hot_services_state.dart';
part 'new_and_hot_services_bloc.freezed.dart';

@injectable
class NewAndHotServicesBloc
    extends Bloc<NewAndHotServicesEvent, NewAndHotServicesState> {
  final HotandNewServices hotAndNew;

  NewAndHotServicesBloc(this.hotAndNew)
      : super(NewAndHotServicesState.inital()) {
    on<GetDataForNewestReleases>((event, emit) async {
      if (state.newestReleases.isNotEmpty) {
        emit(NewAndHotServicesState(
            upcomingData: [],
            newestReleases: state.newestReleases,
            isLoading: false,
            isError: false));
      }
      final result = await hotAndNew.getNewwestReleases();
      final state1 = result.fold((MainFailure fail) {
        return const NewAndHotServicesState(
            upcomingData: [],
            newestReleases: [],
            isLoading: false,
            isError: true);
      }, (UpcomingData data) {
        return NewAndHotServicesState(
            upcomingData: [],
            newestReleases: data.results,
            isLoading: false,
            isError: false);
      });
      emit(state1);
    });
    on<GetDataforUpcomingReleases>((event, emit) async {
      if (state.upcomingData.isNotEmpty) {
        emit(NewAndHotServicesState(
            upcomingData: state.upcomingData,
            newestReleases: [],
            isLoading: false,
            isError: false));
      }
      final result = await hotAndNew.getUpcomingReleases();
      final state2 = result.fold((MainFailure fail) {
        return const NewAndHotServicesState(
            upcomingData: [],
            newestReleases: [],
            isLoading: false,
            isError: true);
      }, (UpcomingData data) {
        return NewAndHotServicesState(
            upcomingData: data.results,
            newestReleases: [],
            isLoading: false,
            isError: false);
      });
      emit(state2);
    });
  }
}
