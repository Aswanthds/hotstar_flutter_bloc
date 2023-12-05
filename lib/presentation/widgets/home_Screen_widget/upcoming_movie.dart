import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/appliation/home_page_bloc/home_page_bloc_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/latest_home.dart';

class NewTVShows extends StatelessWidget {
  const NewTVShows({
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
            "New TV Shows",
            style: style1,
          ),
        ),
        BlocBuilder<HomePageBlocBloc, HomePageBlocState>(
          builder: (context, state) {
            if (state.tvShowDat.isEmpty) {
              return const SizedBox(
                height: 220,
                width: 150,
              );
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
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return LatestHome(
                      posterPath:
                          '$imageAppendUrl${state.tvShowDat[index].posterPath}',
                      index: index,
                      overview: state.tvShowDat[index].overview ?? '',
                      releaseDate: state.tvShowDat[index].firstAirDate ?? '',
                      geners: state.tvShowDat[index].genreIds ?? [],
                      backdropPath:
                          '$imageAppendUrl${state.tvShowDat[index].backdropPath}',
                      title: state.tvShowDat[index].name ?? '',
                    );
                  }),
            );
          },
        ),
      ],
    );
  }
}
