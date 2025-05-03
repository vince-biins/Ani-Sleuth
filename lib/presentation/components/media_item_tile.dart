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
    this.badgeAlpha = 0.8,
    required this.onTap,
    required this.onHover,
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

    return Padding(
      padding: const EdgeInsets.all(8),
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
              width: imageItemWidth,
              decoration: BoxDecoration(
                color: Colors.black,
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
                  AniImageNetwork(src: widget.imageUrl ?? ''),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 90,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black54,
                            Colors.black87,
                          ],
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        widget.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  // Left badge
                  if (widget.isLeftBadgeVisible)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.all(containerPadding / 2),
                        decoration: BoxDecoration(
                          color: leftBadgeColor.withValues(
                            alpha: widget.badgeAlpha,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          widget.leftBadgeValue,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  // Right badge (rating)
                  if (widget.isRightBadgeVisible)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.all(containerPadding / 2),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withValues(alpha: widget.badgeAlpha),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              widget.rating?.toString() ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  if (_hoveredOrTapped)
                    Positioned.fill(
                      child: AnimatedOpacity(
                        opacity: _hoveredOrTapped ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        child: Stack(
                          children: [
                            // Blur layer
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
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    size: 50,
                                    color: Colors.white,
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
