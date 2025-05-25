import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/presentation/page/dashboard/component/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridSection<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final VoidCallback onClickMore;

  final Function(bool) onHover;
  const GridSection({
    super.key,
    required this.items,
    required this.title,
    required this.onClickMore,
    required this.onHover,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final sectionHeadingHeight = 56.0;

    final double aspectRation = UiConstantsProvider.getImageItemWidth(context) /
        UiConstantsProvider.getImageItemHeight(context);
    final double mainAxisSpacing = 16; // spacing between rows
    final double crossAxisSpacing = 16; // spacing between columns
    final EdgeInsets padding = const EdgeInsets.all(8.0);

    final double itemWidth = UiConstantsProvider.getImageItemWidth(context);
    return Padding(
      padding: const EdgeInsets.all(UiConstantsProvider.containerPadding),
      child: SizedBox(
        child: Column(
          children: [
            if (items.isNotEmpty)
              SizedBox(
                height: sectionHeadingHeight,
                child: SectionHeading(title: title),
              ),
            LayoutBuilder(
              builder: (context, constraints) {
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: padding,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: itemWidth + crossAxisSpacing,
                    mainAxisSpacing: mainAxisSpacing,
                    crossAxisSpacing: crossAxisSpacing,
                    childAspectRatio: aspectRation,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return itemBuilder(context, item);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
