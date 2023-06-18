import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'no hay key';
  static String urlApiTheMovieDb = 'https://api.themoviedb.org/3/';
}
