import 'package:flutter/material.dart';
import 'package:hotstar_bloc/core/api_key.dart';
import 'package:hotstar_bloc/core/constants.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id, day, posterPath, movieName, description;
  const ComingSoonWidget({
    super.key,
    // this.upcomingModel,
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
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
          ),
          child: Text(
            "Releasing on  $day",
            // /
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 10),
            child: Text(
              description,
              textAlign: TextAlign.justify,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            )),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 65,
                vertical: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    size: 30,
                  ),
                  Text(
                    "Remind Me",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
