import 'package:flutter/material.dart';

import 'size_reporting_widget.dart';

class ExpandablePageView extends StatefulWidget {
  final List<Widget> children;

  const ExpandablePageView({
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  _ExpandablePageViewState createState() => _ExpandablePageViewState();
}

class _ExpandablePageViewState extends State<ExpandablePageView> {
  late PageController _controller;
  late List<double> _heights;
  int _currentPage = 0;

  double get _currentHeight => _heights[_currentPage];

  @override
  void initState() {
    _heights = widget.children.map((e) => 0.0).toList(growable: false);
    super.initState();
    _controller = PageController()
      ..addListener(() {
        final newPage = _controller.page?.round();
        if (newPage != null && _currentPage != newPage) {
          setState(() => _currentPage = newPage);
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TweenAnimationBuilder<double>(
        curve: Curves.easeInOutCubic,
        duration: const Duration(milliseconds: 100),
        tween: Tween<double>(
          begin: _heights[0], // Почему от первой страницы?
          end: _currentHeight,
        ),
        builder: (context, value, child) => SizedBox(
          height: value,
          child: child,
        ),
        child: PageView(
          controller: _controller,
          children: _sizeReportingChildren
              .asMap()
              .map((index, child) => MapEntry(index, child))
              .values
              .toList(),
        ),
      );

  List<Widget> get _sizeReportingChildren => widget.children
      .asMap()
      .map(
        (index, child) => MapEntry(
          index,
          OverflowBox(
              minHeight: 0,
              maxHeight: double.infinity,
              alignment: Alignment.topCenter,
              child: SizeReportingWidget(
                onSizeChange: (size) => setState(
                  () => _heights[index] = size.height,
                ),
                child: Align(child: child),
              )),
        ),
      )
      .values
      .toList();
}
