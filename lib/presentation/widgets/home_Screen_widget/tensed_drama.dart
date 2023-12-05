import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies_bloc/trending_south_india_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';
import 'package:hotstar_bloc/presentation/widgets/home_Screen_widget/latest_home.dart';

class TensedDramaWidget extends StatelessWidget {
  const TensedDramaWidget({
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
            "Latest Malayalam Releases",
            style: style1,
          ),
        ),
        BlocBuilder<TrendingSouthIndiaBloc, TrendingSouthIndiaState>(
          builder: (context, state) {
            return SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final base = state.upcomingMalayalam[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: LatestHome(
                        posterPath: '$imageAppendUrl${base.posterPath}',
                        index: index,
                        overview: base.overview ?? '',
                        releaseDate: base.releaseDate ?? '',
                        geners: base.genres ?? [],
                        backdropPath: '$imageAppendUrl${base.backdropPath}', title: base.title ?? '',
                      ),
                    );
                  }),
            );
          },
        ),
      ],
    );
  }
}
