import 'package:moviedbproject_calvin_yapi/models/MovieResponse.dart';

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'MovieResponseService.g.dart';

const String baseurl = "https://api.themoviedb.org/3/movie";


@RestApi(baseUrl: baseurl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //Récupérer le type produit, si c'est une tablette ou un téléphone
  @GET("/now_playing?api_key=70d9069eb6427e7ddef8b97d4741f643&page=1")
  Future<MovieResponse> getMovieResponse();

}