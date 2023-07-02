import 'package:app_pelis/domain/entities/movie.dart';
import 'package:app_pelis/presentation/providers/movies/movie_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/repositories/movie_repository.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MovieNotifier, List<Movie>>((ref) {
  final movieRepository = ref.watch(movieRepositoryProvider);
  return MovieNotifier(movieRepository: movieRepository);
});

class MovieNotifier extends StateNotifier<List<Movie>> {
  int currentPage = 0;
  final MoviesRepository movieRepository;
  MovieNotifier({required this.movieRepository}) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final List<Movie> movies =
        await movieRepository.getNowPlaying(page: currentPage);
    state = [...state, ...movies];
  }
}
