import 'package:json_annotation/json_annotation.dart';
import 'Movie.dart';

part 'MovieResponse.g.dart';

@JsonSerializable()
class MovieResponse {

  int? page;
  List<Movie>? results;



  MovieResponse({ this.page, this.results });

  factory MovieResponse.fromJson(Map<String, dynamic> json) => _$MovieResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}