import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  final String title;
  final String overview;
  final String runtime;
  final String release_date;
  final String poster_path;

  const Movie(
      {Key? key,
      required this.title,
      required this.overview,
      required this.runtime,
      required this.release_date,
      required this.poster_path})
      : super(key: key);

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(widget.title),
        SizedBox(
          height: 20,
        ),
        Image(
          image: NetworkImage(
            "https://image.tmdb.org/t/p/w500/${widget.poster_path}",
          ),
        ),

        SizedBox(
          height: 20,
        ),

        Container(
          width: double.maxFinite,
          child: Text("${widget.release_date} - ${widget.runtime} ")
        ),

        Text(widget.overview)
      ],
    ));
  }
}
