import 'package:flutter/material.dart';

///Animated appbar of main screen.
class AppBarContent extends SliverPersistentHeaderDelegate {
  final double minExtended;
  final double maxExtended;
  final Size size;

  AppBarContent({
    required this.minExtended,
    required this.maxExtended,
    required this.size,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double percent = shrinkOffset / maxExtended;

    return Stack(
      children: [
        Positioned(
          top: -(size.height * 0.15),
          left: -(size.height * 0.15),
          child: Transform.rotate(
            angle: percent,
            child: Image(
              fit: BoxFit.cover,
              width: size.height * 0.4,
              height: size.height * 0.4,
              image: const AssetImage(
                'assets/images/circle.png',
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => maxExtended;

  @override
  double get minExtent => minExtended;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
