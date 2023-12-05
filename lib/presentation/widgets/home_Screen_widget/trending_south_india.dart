import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/appliation/home_page_bloc/home_page_bloc_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/latest_home.dart';

class TrendingSouthIndia extends StatelessWidget {
  const TrendingSouthIndia({
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
            "Trending South India",
            style: style1,
          ),
        ),
        BlocBuilder<HomePageBlocBloc, HomePageBlocState>(
          builder: (context, state) {
            if (state.southIndian.isEmpty) {
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
            return SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => LatestHome(
                  posterPath:
                      '$imageAppendUrl${state.southIndian[index].posterPath}',
                  index: index,
                  overview: state.southIndian[index].overview ?? '',
                  releaseDate: state.southIndian[index].releaseDate ?? '',
                  geners: state.southIndian[index].genreIds ?? [],
                  backdropPath:
                      '$imageAppendUrl${state.southIndian[index].backdropPath}',
                  title: state.southIndian[index].title ?? '',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
