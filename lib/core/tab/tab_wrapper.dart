import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class TabWrapper extends StatelessWidget {
  final bool isActive;
  final String text;
  final String iconPath;

  static const _iconHeight = 28.0;
  static const _borderRadius = 16.0;
  static const _activeIconColor = Color(0xFF2AE881);
  static const _inactiveIconColor = Color(0xFF49454F);
  static const activeBgColor = Color(0xFFD4FAE6);
  static const inactiveBgColor = Colors.transparent;
  static const _iconBoxSize = Size(64, 32);

  const TabWrapper({
    super.key,
    required this.isActive,
    required this.text,
    required this.iconPath,
  });

  Color get iconColor => isActive ? _activeIconColor : _inactiveIconColor;

  @override
  Widget build(BuildContext context) => Tab(
    icon: LayoutBuilder(
      builder:
          (context, constraints) => Container(
            constraints: BoxConstraints.tight(_iconBoxSize),
            decoration: BoxDecoration(
              color: isActive ? activeBgColor : inactiveBgColor,
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              iconPath,
              height: _iconHeight,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
            ),
          ),
    ),
    text: text,
  );
}
