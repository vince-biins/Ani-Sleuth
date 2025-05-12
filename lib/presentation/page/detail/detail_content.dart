import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:flutter/widgets.dart';

class DetailContent extends StatelessWidget {
  final FullAnime data;
  const DetailContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(data.toString()),
    );
  }
}
