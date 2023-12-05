import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies/trendingmoviesbloc_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';
import 'package:shimmer/shimmer.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  late PageController _pageController;
    ValueNotifier<int> indicator = ValueNotifier(0);
    return Wrap(
      spacing: 0,
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: [
        BlocBuilder<TrendingmoviesblocBloc, TrendingmoviesblocState>(
          builder: (context, state) {
            if (state.trendingMovies.isEmpty) {
              return Shimmer.fromColors(
                  baseColor: Colors.white,
                  period: const Duration(milliseconds: 5000),
                  highlightColor: Colors.green,
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: MediaQuery.of(context).size.height / 2 + 10,
                    width: MediaQuery.of(context).size.width * 3,
                  ));
            }
            if (state.isLoading) {
              return SizedBox(
                height: MediaQuery.of(context).size.height / 2 + 10,
                width: MediaQuery.of(context).size.width * 3,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            return SizedBox(
              height: MediaQuery.of(context).size.height / 2 + 10,
              width: MediaQuery.of(context).size.width * 0.7,
              child: PageView.builder(
                  itemCount: 8,
                  pageSnapping: true,
                  onPageChanged: (int index) {
                    indicator.value = index;
                  },
                  itemBuilder: (context, pagePosition) {
                    return CarouselPageView(
                      posterPath:
                          '$imageAppendUrl${state.trendingMovies[pagePosition].posterPath}',
                      vote: state.trendingMovies[pagePosition].voteAverage!
                          .toStringAsFixed(2),
                    );
                  }),
            );
          },
        ),
        ValueListenableBuilder<int>(
          valueListenable: indicator,
          builder: (BuildContext context, int value, Widget? child) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(8, value),
              ),
            );
          },
        ),
      ],
    );
  }
}

class CarouselPageView extends StatelessWidget {
  final String posterPath;
  final String vote;
  const CarouselPageView({
    super.key,
    required this.posterPath,
    required this.vote,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                    posterPath,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 80,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  vote,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade700,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -100,
          child: Center(child: container(context)),
        ),
      ],
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 12,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.white : Colors.white24,
          shape: BoxShape.circle),
    );
  });
}

Widget container(BuildContext context) => SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Row(
              children: [
                const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 35,
                ),
                Text(
                  "Watch",
                  style: style2,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Icon(
                Icons.add,
                color: Colors.black,
                size: 35,
              )),
        ],
      ),
    );
