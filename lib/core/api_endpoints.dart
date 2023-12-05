import 'package:hotstar_bloc/core/api_key.dart';

class ApiEndPoints {
  static const downloads =
      "$kBaseurl/trending/movie/day?api_key=$apiKey&sort_by=popularity.desc";
  static const upcoming =
      "$kBaseurl/discover/movie?api_key=$apiKey&primary_release_date.gte=2023-12-31";

  static const southIndian =
      "$kBaseurl/discover/tv?api_key=$apiKey&language=en-US&sort_by=popularity.desc&with_original_language=ml|ta|te|kn";
  static const southIndianMovies =
      "$kBaseurl/discover/movie?api_key=$apiKey&language=en-US&sort_by=popularity.desc&with_original_language=ml|ta|te|kn";
  static const trendingMalayalamMovies =
      "$kBaseurl/discover/movie?language=en-US&api_key=$apiKey&sort_by=popularity.desc&with_original_language=ml";

  static const tamilMovies =
      "$kBaseurl/discover/movie?language=en-US&api_key=$apiKey&sort_by=popularity.desc&with_original_language=ta";

  static const search =
      "$kBaseurl/search/movie?include_adult=false&language=en-US&page=1&api_key=$apiKey";

  // static const top10shows =
  //     "$kBaseurl/discover/tv?api_key=$apiKey&with_original_language=ml&sort_by=vote_average.desc";

  static const tenseDramas =
      "https://api.themoviedb.org/3/discover/movie?api_key=8151b9377204cc5f6a370dbc150c22d9&with_original_language=ml&sort_by=popularity.desc&release_date.lte=2023-11-31&release_date.gte=2023-10-31";
}
