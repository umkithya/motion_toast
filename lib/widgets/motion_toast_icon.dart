import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'heart_beat_icon.dart';

class MotionToastIcon extends StatelessWidget {
  /// Size of the icon.
  final double iconSize;

  /// Set to `true` to show animation of the toast.
  final bool withAnimation;

  /// Icon to display on the toast.
  final IconData icon;

  /// The color of the toast icon.
  final Color color;
  final String? svgIconAsset;
  const MotionToastIcon({
    Key? key,
    required this.iconSize,
    required this.color,
    required this.icon,
    required this.withAnimation,
    this.svgIconAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: iconSize,
      child: withAnimation
          ? HeartBeatIcon(
              icon: icon,
              color: color,
              size: iconSize,
              svgIconAsset: svgIconAsset,
            )
          : svgIconAsset != null
              ? SvgPicture.asset(
                  svgIconAsset!,
                  fit: BoxFit.scaleDown,
                  width: iconSize,
                  height: iconSize,
                )
              : Icon(
                  icon,
                  color: color,
                  size: iconSize,
                ),
    );
  }
}
