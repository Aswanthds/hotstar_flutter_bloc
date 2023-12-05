import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies_bloc/trending_south_india_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/latest_home.dart';

class TrendingTamilWidget extends StatelessWidget {
  const TrendingTamilWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingSouthIndiaBloc, TrendingSouthIndiaState>(
      builder: (context, state) {
        if (state.tamilMovies.isEmpty) {
          return const SizedBox(
            height: 220,
            width: 150,
            child: Center(child: Text("No data Found")),
          );
        }
        if (state.isLoading) {
          return const SizedBox(
            height: 220,
            width: 150,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Trending Tamil Movies",
                style: style1,
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return  LatestHome(
                    posterPath:
                        '$imageAppendUrl${state.tamilMovies[index].posterPath}', index: index, overview: '', releaseDate: '', geners: [], backdropPath: '', title: '',);
                  }),
            ),
          ],
        );
      },
    );
  }
}
