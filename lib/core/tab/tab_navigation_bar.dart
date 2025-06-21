import 'package:flutter/material.dart';

import 'tab_item.dart';
import 'tab_wrapper.dart';

class TabNavigationBar<T extends TabItem> extends StatefulWidget {
  final List<T> tabs;
  final ValueChanged<T> onSelected;

  const TabNavigationBar({
    super.key,
    required this.tabs,
    required this.onSelected,
  });

  @override
  State<TabNavigationBar> createState() => _TabNavigationBarState<T>();
}

class _TabNavigationBarState<T extends TabItem>
    extends State<TabNavigationBar<T>>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  static const _labelColor = Color(0xFF49454F);
  static const _appBarColor = Color(0xFFF3EDF7);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
      widget.onSelected(widget.tabs[_tabController.index]);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: _appBarColor,
    child: TabBar(
      labelColor: _labelColor,
      unselectedLabelColor: _labelColor,
      indicatorColor: Colors.transparent,
      dividerColor: Colors.transparent,
      controller: _tabController,
      tabs: List.generate(widget.tabs.length, (index) {
        final int currentIndex =
            (_tabController.animation?.value ?? _tabController.index).round();
        final isActive = currentIndex == index;
        final item = widget.tabs[index];
        return TabWrapper(
          isActive: isActive,
          text: item.text,
          iconPath: item.iconPath,
        );
      }),
    ),
  );
}
