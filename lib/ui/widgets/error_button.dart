import 'package:flutter/material.dart';

class ErrorButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ErrorButton({super.key, required this.text, required this.onTap});
  static const _background = Color(0xffE46962);
  static const _padding = EdgeInsets.all(16);
  static const _border = BorderRadius.all(Radius.circular(100));
  static const _innerPadding = EdgeInsets.all(10);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _padding,
      child: Material(
        color: _background,
        shape: RoundedRectangleBorder(borderRadius: _border),
        child: InkWell(
          onTap: () => onTap(),
          child: Padding(
            padding: _innerPadding,
            child: Center(
              child: Text(
                text,
                style: TextTheme.of(context).labelLarge!.copyWith(
                  color: ColorScheme.of(context).onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
