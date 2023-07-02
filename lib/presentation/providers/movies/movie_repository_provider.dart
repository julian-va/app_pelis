import 'package:app_pelis/infrastructure/datasources/moviedb_datasource.dart';
import 'package:app_pelis/infrastructure/repositories/moviedb_datasource_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositiryImpl(MovieDbDatasource());
});
