import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/appliation/new_and_hot/new_and_hot_services_bloc.dart';
import 'package:hotstar_bloc/presentation/widgets/coming_soon_widget.dart';

class ComingSoonPage extends StatelessWidget {
  // final UpcomingModel? upcomingModel;
  const ComingSoonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<NewAndHotServicesBloc>(context)
            .add(const NewAndHotServicesEvent.getDataforUpcomingReleases());
      },
    );
    return BlocBuilder<NewAndHotServicesBloc, NewAndHotServicesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(strokeWidth: 2.5));
        } else if (state.isError) {
          return const Center(child: Text("Error Occured"));
        } else if (state.upcomingData.isEmpty) {
          return const Center(
              child: CircularProgressIndicator(strokeWidth: 2.5));
        }
        return ListView.separated(
          itemBuilder: (context, index) {
            final data = state.upcomingData[index];
            return ComingSoonWidget(
              description: data.overview ?? '',
              id: data.id.toString(),
              day: data.releaseDate ?? '',
              posterPath: data.backdropPath ?? '',
              movieName: data.title ?? '',
            );
          },
          itemCount: state.upcomingData.length,
          //d:\Brocamp\Week16\APP UI\hotstar\lib\Screens\Widgets
          //  state.newestReleases.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 40,
          ),
        );
      },
    );
  }
}
