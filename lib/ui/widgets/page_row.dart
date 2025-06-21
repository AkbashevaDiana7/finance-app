import 'package:flutter/material.dart';

class PageRow extends StatelessWidget {
  final bool showChevron;
  final String? iconText;
  final String text;
  final String? subText;
  final String? amount;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const PageRow.header({
    super.key,
    required this.text,
    required this.amount,
    this.onTap,
  }) : showChevron = false,
       subText = null,
       backgroundColor = _headerBackground,
       iconText = null;

  const PageRow.item({
    super.key,
    this.subText,
    this.iconText,
    required this.text,
    this.amount,
    this.onTap,
  }) : showChevron = onTap != null,
       backgroundColor = null;

  static const _padding = EdgeInsets.symmetric(horizontal: 16);
  static const _spaceWidth = 16.0;
  static const _chevronColor = Color(0x3C3C434D);
  static const _dividerColor = Color(0xFFCAC4D0);
  static const _headerBackground = Color(0xffD4FAE6);

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap != null ? () => onTap?.call() : null,
    child: Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: _dividerColor, width: 2)),
        color: backgroundColor,
      ),
      child: Padding(
        padding: _padding,
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyLarge!,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (iconText != null) ...[
                    _PageRowIcon(text: iconText!),
                    SizedBox(width: _spaceWidth),
                  ],

                  _TextPart(text: text, subText: subText),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (amount != null) Text(amount!, textAlign: TextAlign.end),
                  if (showChevron) ...[
                    SizedBox(width: _spaceWidth),
                    Icon(Icons.chevron_right, color: _chevronColor),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class _TextPart extends StatelessWidget {
  static const _padding = EdgeInsets.symmetric(vertical: 22);

  static const _paddingWithSubText = EdgeInsets.symmetric(vertical: 14);

  const _TextPart({required this.text, required this.subText});

  final String text;
  final String? subText;

  @override
  Widget build(BuildContext context) => Padding(
    padding: subText == null ? _padding : _paddingWithSubText,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        if (subText != null)
          Text(subText!, style: Theme.of(context).textTheme.labelMedium),
      ],
    ),
  );
}

class _PageRowIcon extends StatelessWidget {
  final String text;

  const _PageRowIcon({required this.text});

  static const _color = Color(0xffD4FAE6);
  static const _size = Size(24, 24);
  static const _textFontSize = 18.0;

  @override
  Widget build(BuildContext context) => SizedBox.fromSize(
    size: _size,
    child: ClipOval(
      child: ColoredBox(
        color: _color,
        child: Center(
          child: Text(text, style: TextStyle(fontSize: _textFontSize)),
        ),
      ),
    ),
  );
}
