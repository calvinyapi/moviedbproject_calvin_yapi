// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int?,
      original_title: json['original_title'] as String?,
      release_date: json['release_date'] as String?,
      overview: json['overview'] as String?,
      poster_path: json['poster_path'] as String?,
      runtime: json['runtime'] as String?,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'original_title': instance.original_title,
      'release_date': instance.release_date,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'runtime': instance.runtime,
    };
