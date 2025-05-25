import 'package:ani_sleuth/core/util.dart';
import 'package:ani_sleuth/domain/model/anime/entity/full_anime.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/favorite_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderCarouselSection extends StatelessWidget {
  final List<FullAnime> favoriteAnime;
  final Function(int) onClicked;
  final CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  HeaderCarouselSection({
    super.key,
    required this.favoriteAnime,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    final height =
        context.isCompact ? context.screenHeight * 0.4 : context.screenHeight;
    return SizedBox(
      height: height,
      width: context.screenWidth,
      child: CarouselSlider(
        items: favoriteAnime.map((item) {
          return FavoriteItem(
            favoriteAnime: item,
            height: height,
            onClicked: onClicked,
          );
        }).toList(),
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          height: height,
          autoPlay: true,
          initialPage: 0,
          viewportFraction: 1,
          autoPlayAnimationDuration: const Duration(seconds: 3),
          autoPlayInterval: const Duration(seconds: 4),
        ),
      ),
    );
  }
}
