import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: List.generate(_tabItems.length, (index) {
            final int currentIndex =
                (_tabController.animation?.value ?? _tabController.index)
                    .round();
            final isActive = currentIndex == index;
            final item = _tabItems[index];
            return TabWrapper(
              isActive: isActive,
              text: item['text']!,
              iconPath: item['icon']!,
            );
          }),
        ),
      ),
    ),
  );
}

// TODO: вынести в отдельный файл
class TabWrapper extends StatelessWidget {
  final bool isActive;
  final String text;
  final String iconPath;

  static const double _iconHeight = 28;
  static const double _borderRadius = 16;
  static const Color _activeIconColor = Color(0xFF2AE881);
  static const Color _inactiveIconColor = Color(0xFF49454F);
  static const Color activeBgColor = Color(0xFFD4FAE6);
  static const Color inactiveBgColor = Colors.transparent;

  const TabWrapper({
    super.key,
    required this.isActive,
    required this.text,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    final Color iconColor = isActive ? _activeIconColor : _inactiveIconColor;
    return Tab(
      icon: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
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
          );
        },
      ),
      text: text,
    );
  }
}

const List<Map<String, String>> _tabItems = [
  {'text': 'Расходы', 'icon': 'assets/icons/svg/downtrend.svg'},
  {'text': 'Доходы', 'icon': 'assets/icons/svg/uptrend.svg'},
  {'text': 'Счет', 'icon': 'assets/icons/svg/calculator.svg'},
  {'text': 'Статьи', 'icon': 'assets/icons/svg/bar-chart-side.svg'},
  {'text': 'Настройки', 'icon': 'assets/icons/svg/settings.svg'},
];
