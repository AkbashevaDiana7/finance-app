import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddItemIconButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddItemIconButton({super.key, required this.onTap});

  static const _barIconColor = Color(0xff2AE881);
  static const _barIconSize = Size(56, 56);
  static const _barIconPath = 'assets/icons/svg/plus.svg';

  @override
  Widget build(BuildContext context) => ClipOval(
    child: Material(
      color: _barIconColor,
      child: InkWell(
        splashColor: _barIconColor,
        onTap: () => onTap(),
        child: SizedBox.fromSize(
          size: _barIconSize,
          child: Center(child: SvgPicture.asset(_barIconPath)),
        ),
      ),
    ),
  );
}
