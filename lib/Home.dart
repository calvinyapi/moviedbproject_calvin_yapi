import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:moviedbproject_calvin_yapi/models/MovieResponse.dart';
import 'package:moviedbproject_calvin_yapi/services/MovieResponseService.dart';

import 'models/Movie.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   late Future<MovieResponse> _movieResponse;

  //récupérer les films par l'url.
  Future<MovieResponse> _fetchMovie() async {
    final dio = Dio();
    final client = RestClient(dio);
    final logger = Logger();
    client.getMovieResponse().then((it) => logger.i(it));
    MovieResponse movieResponse = await client.getMovieResponse();
    return movieResponse;
  }
   @override
   void initState() {
     super.initState();
     _movieResponse = _fetchMovie();
   }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FutureBuilder(
              future:  _movieResponse,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  final MovieResponse movieResponse = snapshot.data;
                  final List<Movie>? results = movieResponse.results;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: results!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return  Card(
                        child: InkWell(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(results[index].original_title.toString()),
                                  Text(results[index].release_date.toString()),

                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );

                }
                return CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}
