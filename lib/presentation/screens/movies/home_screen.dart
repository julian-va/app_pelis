import 'package:app_pelis/presentation/providers/movies/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _HomeVIew());
  }
}

class _HomeVIew extends ConsumerStatefulWidget {
  const _HomeVIew();

  @override
  _HomeVIewState createState() => _HomeVIewState();
}

class _HomeVIewState extends ConsumerState<_HomeVIew> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final statePelis = ref.watch(nowPlayingMoviesProvider);

    return ListView.builder(
      itemCount: statePelis.length,
      itemBuilder: (context, index) {
        final movie = statePelis[index];
        return ListTile(
          title: Text(movie.title),
        );
      },
    );
  }
}
