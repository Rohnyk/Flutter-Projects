import 'package:flutter/material.dart';

class ControlTabs extends StatefulWidget {
  final List<Tab> listTabs;
  final bool isScrollable;

  ControlTabs(this.listTabs, this.isScrollable);

  @override
  _ControlTabsState createState() => _ControlTabsState();
}

class _ControlTabsState extends State<ControlTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.listTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      tabs: widget.listTabs,
      isScrollable: widget.isScrollable,
    );
  }
}
