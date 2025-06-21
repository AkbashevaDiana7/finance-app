import 'package:flutter/material.dart';

class ErrorButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ErrorButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Material(
        color: Theme.of(context).colorScheme.error,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: InkWell(
          onTap: () => onTap(),
          child: Padding(
            padding: const EdgeInsets.all(10),
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
