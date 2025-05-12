import 'dart:ui';
import 'package:ani_sleuth/core/components/ui_constants.dart';
import 'package:ani_sleuth/presentation/components/ani_image_network.dart';
import 'package:flutter/material.dart';

class MediaItemTile extends StatefulWidget {
  final int id;
  final String title;
  final String? imageUrl;
  final String leftBadgeValue;
  final double? rating;
  final bool isLeftBadgeVisible;
  final bool isRightBadgeVisible;
  final bool isRankedTile;
  final double badgeAlpha;
  final Function(int) onTap;
  final Function(bool) onHover;
  final IconData icon;

  const MediaItemTile({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.leftBadgeValue,
    this.isLeftBadgeVisible = true,
    this.isRightBadgeVisible = true,
    required this.isRankedTile,
    required this.rating,
    this.badgeAlpha = 0.9,
    required this.onTap,
    required this.onHover,
    this.icon = Icons.play_circle_fill,
  });

  @override
  State<MediaItemTile> createState() => _MediaItemTileState();
}

class _MediaItemTileState extends State<MediaItemTile>
    with SingleTickerProviderStateMixin {
  bool _hoveredOrTapped = false;

  void _setHovered(bool hovered) {
    setState(() {
      _hoveredOrTapped = hovered;
    });
    widget.onHover(hovered);
  }

  @override
  Widget build(BuildContext context) {
    final leftBadgeColor = widget.isRankedTile
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.tertiary;
    final leftBadgeTextColor = widget.isRankedTile
        ? Theme.of(context).colorScheme.onPrimary
        : Theme.of(context).colorScheme.onTertiary;

    return AspectRatio(
      aspectRatio: UiConstantsProvider.getImageItemWidth(context) /
          UiConstantsProvider.getImageItemHeight(context),
      child: MouseRegion(
        onEnter: (_) => _setHovered(true),
        onExit: (_) => _setHovered(false),
        child: GestureDetector(
          onLongPressStart: (_) {
            setState(() {
              _hoveredOrTapped = true;
            });
          },
          onLongPressEnd: (_) {
            setState(() {
              _hoveredOrTapped = false;
            });
          },
          onTap: () {
            widget.onTap(widget.id);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: UiConstantsProvider.getImageItemHeight(context),
              width: UiConstantsProvider.getImageItemWidth(context),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Image background
                  AniImageNetwork(
                    src: widget.imageUrl ?? '',
                    height: UiConstantsProvider.getImageItemHeight(context),
                    width: UiConstantsProvider.getImageItemWidth(context),
                    fit: BoxFit.cover,
                  ),

                  Positioned(
                    bottom: -5,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black87,
                          ],
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding:
                          EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
                      child: Text(
                        widget.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),

                  // Left badge
                  if (widget.isLeftBadgeVisible)
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(
                          UiConstantsProvider.containerPadding - 2,
                        ),
                        decoration: BoxDecoration(
                          color: leftBadgeColor.withValues(
                            alpha: widget.badgeAlpha,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          widget.leftBadgeValue,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: leftBadgeTextColor,
                                    fontStyle: FontStyle.italic,
                                  ),
                        ),
                      ),
                    ),

                  // Right badge (rating)
                  if (widget.isRightBadgeVisible)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(
                          UiConstantsProvider.containerPadding - 4,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withValues(alpha: widget.badgeAlpha),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: Theme.of(context).colorScheme.onSecondary,
                              size: 12,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              widget.rating?.toString() ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  // Blur layer
                  if (_hoveredOrTapped)
                    Positioned.fill(
                      child: AnimatedOpacity(
                        opacity: _hoveredOrTapped ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        child: Stack(
                          children: [
                            BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                              child: Container(
                                color: Colors.transparent,
                              ),
                            ),
                            Center(
                              child: AnimatedScale(
                                scale: _hoveredOrTapped ? 1.0 : 0.8,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeOutBack,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        50.0,
                                      ), // Adjust the radius
                                    ),
                                    child: Icon(
                                      widget.icon,
                                      size: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
