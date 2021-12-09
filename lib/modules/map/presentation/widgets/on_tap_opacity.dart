import 'package:flutter/material.dart';

class OnTapOpacityContainer extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double onTapOpacity;
  final Curve? curve;
  final GestureTapCallback onTap;
  final EdgeInsets padding;

  const OnTapOpacityContainer({
    Key? key,
    this.duration = const Duration(milliseconds: 200),
    this.onTapOpacity = 0.4,
    required this.child,
    this.curve,
    required this.onTap,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  _OnTapOpacityContainerState createState() => _OnTapOpacityContainerState();
}

class _OnTapOpacityContainerState extends State<OnTapOpacityContainer> {
  var _isTapped = false;

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onVerticalDragDown: (_) => _onTap(),
        onVerticalDragEnd: (_) => _onUntap(),
        onVerticalDragCancel: _onUntap,
        onTapDown: (_) => _onTap(),
        onTapCancel: _onUntap,
        onTapUp: (_) => _onUntap(),
        onTap: widget.onTap,
        child: Container(
          padding: widget.padding,
          child: AnimatedOpacity(
            curve: widget.curve ?? Curves.decelerate,
            opacity: _isTapped ? widget.onTapOpacity : 1,
            duration: _isTapped ? Duration.zero : widget.duration,
            child: widget.child,
          ),
        ),
      );

  _onTap() {
    if (!_isTapped) {
      setState(() {
        _isTapped = true;
      });
    }
  }

  _onUntap() {
    if (_isTapped) {
      setState(() {
        _isTapped = false;
      });
    }
  }
}
