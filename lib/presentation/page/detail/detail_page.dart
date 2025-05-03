import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int? animeId;

  const DetailPage({super.key, this.animeId});

  static route(int? animeId) {
    return MaterialPageRoute(
      builder: (context) => DetailPage(
        animeId: animeId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: Text('Anime ID: $animeId'),
      ),
    );
  }
}
