import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int? animeId;
  final String pageTitle;

  const DetailPage({super.key, this.animeId, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: Center(
        child: Text('Anime ID: $animeId'),
      ),
    );
  }
}
