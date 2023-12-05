import 'package:flutter/material.dart';
import 'package:hotstar_bloc/appliation/trending_movies/trendingmoviesbloc_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/presentation/widgets/search_redirect_page.dart';

class LatestHome extends StatelessWidget {
  final String posterPath, overview, releaseDate, backdropPath, title;
  final int index;
  final List<int> geners;
  const LatestHome(
      {super.key,
      required this.posterPath,
      required this.index,
      required this.overview,
      required this.releaseDate,
      required this.geners,
      required this.backdropPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => MovieDetailsPage(
            index: index,
            posterPath: posterPath,
            releaseDate: releaseDate,
            overview: overview,
            genres: geners,
            backdropPath: backdropPath,
            title: title,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: posterPath != '${imageAppendUrl}null'
            ? Container(
                height: 220,
                width: 150,
                decoration: BoxDecoration(
                    // color: Colors.red.shade700,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(posterPath), fit: BoxFit.fitWidth)),
                // child: Text(posterPath),
              )
            : Container(
                height: 220,
                width: 150,
                decoration: BoxDecoration(
                  // color: Colors.red.shade700,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Placeholder(
                    child: Center(child: Text("No Thumbnail Found"))),
              ),
      ),
    );
  }
}

class Top10Movies extends StatelessWidget {
  final int index;
  final TrendingmoviesblocState state;
  const Top10Movies({super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final base = state.trendingMovies[index];
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => MovieDetailsPage(
            index: index,
            posterPath: '$imageAppendUrl${base.posterPath}',
            overview: '${base.overview}',
            releaseDate: base.releaseDate ?? '',
            genres: base.genreIds ?? [],
            backdropPath: '$imageAppendUrl${base.backdropPath}', title: base.title ?? '',
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                height: 220,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          '$imageAppendUrl${state.trendingMovies[index].posterPath}'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              bottom: -30,
              left: 0,
              child: Text(
                (index + 1).toString(),
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..strokeWidth = 10.0
                      ..color = Colors.blue.shade800
                      ..style = PaintingStyle.fill,
                    decorationStyle: TextDecorationStyle.double),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
