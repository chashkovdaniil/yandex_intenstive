import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/constants.dart';
import '../../../../core/styles/app_theme.dart';
import 'size_reporting_widget.dart';

class ExpandableTabBarView extends StatefulWidget {
  final List<Widget> children;

  const ExpandableTabBarView({
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  _ExpandableTabBarViewState createState() => _ExpandableTabBarViewState();
}

class _ExpandableTabBarViewState extends State<ExpandableTabBarView>
    with SingleTickerProviderStateMixin {
  late List<double> _heights;
  late TabController _controller;
  int _index = 0;

  double get _currentHeight => _heights[_index];

  @override
  void initState() {
    _heights = List.filled(widget.children.length, 0.0);
    super.initState();
    _controller = TabController(vsync: this, length: _heights.length)
      ..addListener(() {
        final newIndex = _controller.index;
        if (_index != newIndex) {
          setState(() => _index = newIndex);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 46.0),
                height: 5.0,
                color: AppColors.educationLightGreen,
              ),
              TabBar(
                controller: _controller,
                labelStyle: AppTheme.educationSmall,
                labelColor: AppTheme.educationSmall.color,
                unselectedLabelColor: AppTheme.educationSmallLight.color,
                indicatorColor: AppColors.green,
                indicatorWeight: 5.0,
                tabs: StringValues.educationPageTitles
                    .map(
                      (item) => Tab(text: item),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: TabBarView(
          controller: _controller,
          children: _children,
        ),
      ),
    );

    return TweenAnimationBuilder<double>(
      curve: Curves.easeInOutCubic,
      duration: const Duration(microseconds: 200),
      tween: Tween<double>(
        begin: _heights[0], // Почему от первой страницы?
        end: _currentHeight,
      ),
      builder: (context, value, child) => SizedBox(
        height: value + 80.0,
        child: child,
      ),
      child: scaffold,
    );
  }

  List<Widget> get _children => widget.children
      .asMap()
      .map(
        (index, child) => MapEntry(
          index,
          Align(
            alignment: Alignment.topCenter,
            child: OverflowBox(
              alignment: Alignment.topLeft,
              minHeight: 0.0,
              maxHeight: double.infinity,
              child: SizeReportingWidget(
                onSizeChange: (size) => setState(
                  () => _heights[index] = size.height,
                ),
                child: child,
              ),
            ),
          ),
        ),
      )
      .values
      .toList();
}
