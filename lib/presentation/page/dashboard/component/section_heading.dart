import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final VoidCallback? onClickMore;
  final String title;

  const SectionHeading({
    super.key,
    this.onClickMore,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(UiConstantsProvider.containerPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 8,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: UiConstantsProvider.containerPadding,
                ),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            if (onClickMore != null)
              IconButton(
                onPressed: onClickMore,
                icon: const Icon(Icons.arrow_forward_ios),
                tooltip: 'See all',
              ),
          ],
        ),
      ),
    );
  }
}
