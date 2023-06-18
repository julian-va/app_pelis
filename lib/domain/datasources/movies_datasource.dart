import 'package:app_pelis/domain/entities/movie.dart';

abstract class MovieDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
