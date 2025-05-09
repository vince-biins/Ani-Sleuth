import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/favorite_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderCarouselSection extends StatelessWidget {
  final List<FullAnime> favoriteAnime;
  final CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  HeaderCarouselSection({super.key, required this.favoriteAnime});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight,
      width: context.screenWidth,
      child: CarouselSlider(
          items: favoriteAnime.map((item) {
            return FavoriteItem(favoriteAnime: item);
          }).toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            initialPage: 0,
            viewportFraction: 1,
            autoPlayAnimationDuration: const Duration(seconds: 3),
            autoPlayInterval: const Duration(seconds: 4),
          )),
    );
  }
}
