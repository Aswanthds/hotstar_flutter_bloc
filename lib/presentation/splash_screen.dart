import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotstar_bloc/core/constants.dart';
import 'package:hotstar_bloc/presentation/nav_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // SouthIndian? southIndian;
  // TrendingMovies? trendingMovies;
  // UpcomingModel? upcomingData;
  // MalayalamMovieModel? malayalamMovieModel, tamilMovies;
  // TenseMovieModel? tensedata;
  @override
  void initState() {
    super.initState();
    helperFunctions();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const NavigatePageScreen(
              // southIndian: southIndian,
              // trendingMovies: trendingMovies,
              // upcomingData: upcomingData,
              // malayalamMovieModel: malayalamMovieModel,
              // tamilMovies: tamilMovies,
              // tensedata: tensedata,
              ),
        ),
      ),
    );
  }

  helperFunctions() async {
    // southIndian = await CallHelperFunctions.getData();
    // trendingMovies = await CallHelperFunctions.getTrendingData();
    // upcomingData = await CallHelperFunctions.getUpcomingData();
    // malayalamMovieModel = await CallHelperFunctions.getTrendingMovies();
    // tamilMovies = await CallHelperFunctions.getTamilMovies();
    // tensedata = await CallHelperFunctions.getTenseDramas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 20, 124, 1.0),
      body: Center(
        child: Image.asset(
          splash,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
