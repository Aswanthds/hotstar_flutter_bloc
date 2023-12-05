part of 'home_page_bloc_bloc.dart';

@freezed
class HomePageBlocEvent with _$HomePageBlocEvent {
  const factory HomePageBlocEvent.intialize() = Intialize;
  const factory HomePageBlocEvent.getTvSeriesData() = GetTvSeriesData;
  const factory HomePageBlocEvent.getSouthIndian() = GetSouthIndian;
  
 
}
