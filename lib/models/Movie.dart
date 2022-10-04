import 'package:json_annotation/json_annotation.dart';

part 'Movie.g.dart';

@JsonSerializable()
class Movie {

  int? id;
  String? original_title;
  String? release_date;
  String? overview;
  String? poster_path;
  String? runtime;
    Movie({ this.id, this.original_title, this.release_date, this.overview, this.poster_path, this.runtime});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}