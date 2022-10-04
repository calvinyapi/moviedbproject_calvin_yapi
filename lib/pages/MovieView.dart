import 'package:flutter/material.dart';

class MovieView extends StatefulWidget {
  final String title;
  final String overview;
  //final int runtime;
  final String release_date;
  final String poster_path;

  const MovieView(
      {Key? key,
      required this.title,
      required this.overview,
      required this.release_date,
      required this.poster_path})
      : super(key: key);

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              width: 150,
              height: 200,
              child: Image(
                image: NetworkImage(
                  "https://image.tmdb.org/t/p/w500/${widget.poster_path}",
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                width: double.maxFinite,
                child: Text("${widget.release_date}")),
            const SizedBox(height: 5),
            const Text("Sypnosis", ),
            const SizedBox(
              height: 10,
            ),
            LimitedBox(
              maxWidth: 50,
              child:  Text(
                widget.overview,
                textAlign: TextAlign.left,
              ),
            )
          ],
        )),
      ),
    );
  }
}
