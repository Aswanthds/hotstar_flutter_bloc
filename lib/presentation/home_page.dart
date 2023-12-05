import 'package:flutter/material.dart';
import 'package:hotstar_bloc/appliation/home_page_bloc/home_page_bloc_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies/trendingmoviesbloc_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies_bloc/trending_south_india_bloc.dart';
import 'package:hotstar_bloc/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/carousel.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/tensed_drama.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/top_trending_movies.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/trending_malayalam.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/trending_south_india.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/trensding_tamil.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/upcoming_movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<TrendingmoviesblocBloc>(context)
            .add(const TrendingmoviesblocEvent.getData());
        BlocProvider.of<HomePageBlocBloc>(context)
            .add(const HomePageBlocEvent.getTvSeriesData());
        BlocProvider.of<HomePageBlocBloc>(context)
            .add(const HomePageBlocEvent.getSouthIndian());
        BlocProvider.of<TrendingSouthIndiaBloc>(context)
            .add(const TrendingSouthIndiaEvent.getTamilMovies());
        BlocProvider.of<TrendingSouthIndiaBloc>(context)
            .add(const TrendingSouthIndiaEvent.getMalayalamMovies());
             BlocProvider.of<TrendingSouthIndiaBloc>(context)
            .add(const TrendingSouthIndiaEvent.getLatestMalayalam());
      },
    );
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.transparent,
          Color.fromARGB(255, 7, 43, 83),
          Color.fromARGB(96, 16, 81, 146),
          Color.fromARGB(108, 5, 73, 128),
          Color.fromARGB(255, 7, 43, 83),
          Color.fromARGB(96, 16, 81, 146),
          Color.fromARGB(108, 5, 73, 128),
          Colors.transparent,
        ]),
      ),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Image.asset(
              splash,
              height: 60,
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Color.fromARGB(255, 7, 43, 83),
                  Color.fromARGB(96, 16, 81, 146),
                  Color.fromARGB(108, 5, 73, 128),
                  Color.fromARGB(255, 7, 43, 83),
                  Color.fromARGB(96, 16, 81, 146),
                  Color.fromARGB(108, 5, 73, 128),
                  Colors.transparent,
                ]),
              ),
            ),
            actions: [
              Image.asset(
                subscribe,
                height: 25,
              ),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const CarouselWidget(),
            const TopTrendingMovies(),
            const NewTVShows(),
            const TrendingSouthIndia(),
            const TrendingMalayalamWidget(),
            const TrendingTamilWidget(),
            const TensedDramaWidget(),
          ]))
        ],
      ),
    ));
  }
}
