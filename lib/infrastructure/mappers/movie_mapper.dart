import 'package:app_pelis/domain/entities/movie.dart';
import 'package:app_pelis/infrastructure/models/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieMovieDb movieDb) {
    return Movie(
        adult: movieDb.adult,
        backdropPath: movieDb.backdropPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
            : 'https://ih1.redbubble.net/image.1027712254.9762/pp,840x830-pad,1000x1000,f8f8f8.u2.jpg',
        genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
        id: movieDb.id,
        originalLanguage: movieDb.originalLanguage,
        originalTitle: movieDb.originalTitle,
        overview: movieDb.overview,
        popularity: movieDb.popularity,
        posterPath: movieDb.posterPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
            : 'https://ih1.redbubble.net/image.1027712254.9762/pp,840x830-pad,1000x1000,f8f8f8.u2.jpg',
        releaseDate: movieDb.releaseDate,
        title: movieDb.title,
        video: movieDb.video,
        voteAverage: movieDb.voteAverage,
        voteCount: movieDb.voteCount);
  }
}
