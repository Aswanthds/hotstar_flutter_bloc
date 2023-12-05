part of 'new_and_hot_services_bloc.dart';

@freezed
class NewAndHotServicesState with _$NewAndHotServicesState {
  const factory NewAndHotServicesState({
    required List<UpcomingDataResult> upcomingData,
    required List<UpcomingDataResult> newestReleases,
    required bool isLoading,
    required bool isError,
  }) = _NewAndHotServicesState;

  factory NewAndHotServicesState.inital() => const NewAndHotServicesState(
      upcomingData: [], newestReleases: [], isLoading: false, isError: false);
}
