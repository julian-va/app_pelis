import 'dart:io';

import 'package:app_pelis/domain/datasources/movies_datasource.dart';
import 'package:app_pelis/domain/entities/movie.dart';
import 'package:dio/dio.dart';

import '../../config/constants/environment.dart';

class MovieDbDatasource extends MovieDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: Environment.urlApiTheMovieDb,
      queryParameters: {
        'api_key': Environment.theMovieKey,
        'language': 'es-MX'
      }));
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final res = await dio.get('movie/now_playing');
    if (res.statusCode == HttpStatus.ok) {}
    return [];
  }
}
