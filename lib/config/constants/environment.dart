import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'no hay key';
  static String urlApi =
      'https://api.themoviedb.org/3/movie/550?api_key=3aaaaba737153005393acc6f4e768282';
}
