import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies/trendingmoviesbloc_bloc.dart';
import 'package:hotstar_bloc/core/constants.dart';

import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/latest_home.dart';
import 'package:shimmer/shimmer.dart';

class TopTrendingMovies extends StatelessWidget {
  const TopTrendingMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Top 10 Trending Movies",
            style: style1,
          ),
        ),
        SizedBox(
          height: 220,
          child: BlocBuilder<TrendingmoviesblocBloc, TrendingmoviesblocState>(
            builder: (context, state) {
              if (state.trendingMovies.isEmpty) {
                return const LoadingWidgetHomePage();
              }
              if (state.isLoading) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height / 2 + 10,
                  width: MediaQuery.of(context).size.width * 3,
                  child: const  Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Top10Movies(
                      index: index,
                      state: state,
                    );
                  });
            },
          ),
        ),
      ],
    );
  }
}

class LoadingWidgetHomePage extends StatelessWidget {
  const LoadingWidgetHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const SizedBox(
          height: 220,
          width: 150,
        ),
      ),
    );
  }
}
