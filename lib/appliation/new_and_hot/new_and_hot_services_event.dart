part of 'new_and_hot_services_bloc.dart';

@freezed
class NewAndHotServicesEvent with _$NewAndHotServicesEvent {
  const factory NewAndHotServicesEvent.getDataforUpcomingReleases() =
      GetDataforUpcomingReleases;
  const factory NewAndHotServicesEvent.getDataForNewestReleases() =
      GetDataForNewestReleases;
}
