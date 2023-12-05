import 'package:flutter/material.dart';
import 'package:hotstar_bloc/appliation/search_data_bloc/search_data_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';

class SearchRedirectPage extends StatelessWidget {
  final int index;
  final SearchDataState state;
  const SearchRedirectPage(
      {super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final data = "$imageAppendUrl${state.searchResult[index].posterPath}";
    final genreData =
        state.searchResult[index].genres?.map((e) => getGenreName(e)).toList();
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: data != "${imageAppendUrl}null"
                        ? NetworkImage(data)
                        : NetworkImage(
                            "$imageAppendUrl${state.searchResult[index].backdropPath}"),
                    fit: data != "${imageAppendUrl}null"
                        ? BoxFit.fitHeight
                        : BoxFit.fitWidth),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Movie Name : ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(
                  text: state.searchResult[index].title ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  )),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Release Date : ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(
                  text: state.searchResult[index].title ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  )),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Genres : ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              TextSpan(
                children: List<TextSpan>.generate(
                  genreData?.length ?? 0,
                  (index) => TextSpan(
                      text: "${genreData?[index]} | ",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Overview",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  state.searchResult[index].title ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 35,
                ),
                Text(
                  "Watch Now",
                  style: style2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieDetailsPage extends StatelessWidget {
  final int index;
  final String posterPath, overview, releaseDate, backdropPath;
  final List<int> genres;

  final String title;
  const MovieDetailsPage(
      {super.key,
      required this.index,
      required this.posterPath,
      required this.overview,
      required this.releaseDate,
      required this.genres,
      required this.backdropPath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final genreData = genres.map((e) => getGenreName(e)).toList();
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: backdropPath != "${imageAppendUrl}null"
                        ? NetworkImage(backdropPath)
                        : NetworkImage(posterPath),
                    fit: posterPath != "${imageAppendUrl}null"
                        ? BoxFit.fitHeight
                        : BoxFit.fitWidth),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Movie Name : ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(
                  text: title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  )),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Release Date : ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(
                  text: releaseDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  )),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Genres : ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              TextSpan(
                children: List<TextSpan>.generate(
                  genreData.length,
                  (index) => TextSpan(
                      text: "${genreData[index]} | ",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ),
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Overview",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  overview,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 35,
                ),
                Text(
                  "Watch Now",
                  style: style2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
