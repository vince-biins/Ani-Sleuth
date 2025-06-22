import 'package:ani_sleuth/application/library/library_bloc.dart';
import 'package:ani_sleuth/presentation/page/library/component/header_section.dart';
import 'package:flutter/material.dart';

class LibraryContent extends StatelessWidget {
  final ({String title, String subtitle, String imgUrl}) header;
  final LibraryData data;

  const LibraryContent({super.key, required this.data, required this.header});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: HeaderSection(
            title: header.title,
            imgUrl: header.imgUrl,
            subtitle: header.subtitle,
          ),
        ),
      ],
    );
  }
}
