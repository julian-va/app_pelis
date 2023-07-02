import 'package:app_pelis/domain/datasources/movies_datasource.dart';
import 'package:app_pelis/domain/entities/movie.dart';
import 'package:app_pelis/domain/repositories/movie_repository.dart';

class MovieRepositiryImpl extends MoviesRepository {
  final MovieDatasource dataSource;

  MovieRepositiryImpl(this.dataSource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) =>
      dataSource.getNowPlaying(page: page);
}
