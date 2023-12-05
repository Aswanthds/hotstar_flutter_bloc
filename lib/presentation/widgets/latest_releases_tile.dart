import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:hotstar_bloc/appliation/new_and_hot/new_and_hot_services_bloc.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';

class LatestReleases extends StatelessWidget {
  const LatestReleases({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<NewAndHotServicesBloc>(context)
            .add(const NewAndHotServicesEvent.getDataForNewestReleases());
      },
    );
    return BlocBuilder<NewAndHotServicesBloc, NewAndHotServicesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(strokeWidth: 2.5));
        } else if (state.isError) {
          return const Center(child: Text("Error Occured"));
        } else if (state.newestReleases.isEmpty) {
          return const Center(
              child: CircularProgressIndicator(strokeWidth: 2.5));
        }
        return ListView.separated(
          itemBuilder: (context, index) {
            final data = state.newestReleases[index];
            return LatestReleasesWidget(
              //index: index,
              description: data.overview ?? '',
              id: data.id.toString(),
              day: data.releaseDate ?? '',
              posterPath: data.backdropPath ?? '',
              movieName: data.title ?? '',
            );
          },
          itemCount: state.newestReleases.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 40,
          ),
        );
      },
    );
  }
}

class LatestReleasesWidget extends StatelessWidget {
  final String id, day, posterPath, movieName, description;

  const LatestReleasesWidget({
    super.key,
    required this.id,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            image: DecorationImage(
              image: NetworkImage('$imageAppendUrl$posterPath'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 10,
              bottom: 5,
            ),
            child: Text(
              movieName,
              style: style1,
            )),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 10,
          ),
          child: Text(
            "Released on : $day ",
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: 15,
            right: 15,
          ),
          child: Text(
            description,
            textAlign: TextAlign.justify,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 40,
                      ),
                      Text(
                        "Watch now",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
