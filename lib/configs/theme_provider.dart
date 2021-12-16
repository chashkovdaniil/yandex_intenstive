import 'package:flutter/material.dart';

class ThemeProvider extends StatefulWidget {
  final Widget? child;
  final ThemeMode themeMode;
  final Widget Function(BuildContext context)? builder;
  const ThemeProvider({
    Key? key,
    this.child,
    required this.themeMode,
    this.builder,
  })  : assert(child != null || builder != null),
        super(key: key);

  @override
  _ThemeProviderState createState() => _ThemeProviderState();

  static ThemeProviderInherited of(BuildContext context) {
    var result =
        context.dependOnInheritedWidgetOfExactType<ThemeProviderInherited>();
    assert(result != null, 'No ThemeProvider found in context');
    return result!;
  }
}

class _ThemeProviderState extends State<ThemeProvider> {
  late ThemeMode themeMode;

  @override
  void initState() {
    super.initState();
    themeMode = widget.themeMode;
  }

  bool onThemeModeChanged(ThemeMode mode) {
    setState(() {
      themeMode = mode;
    });
    return widget.themeMode == mode;
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProviderInherited(
      themeMode: themeMode,
      onThemeModeChanged: onThemeModeChanged,
      isDarkTheme: Theme.of(context).brightness == Brightness.dark,
      child: widget.builder != null
          ? Builder(
              builder: widget.builder!,
            )
          : widget.child!,
    );
  }
}

class ThemeProviderInherited extends InheritedWidget {
  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeModeChanged;
  final bool _isDarkTheme;

  const ThemeProviderInherited({
    Key? key,
    required Widget child,
    required this.themeMode,
    required this.onThemeModeChanged,
    required bool isDarkTheme,
  })  : _isDarkTheme = isDarkTheme,
        super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(covariant ThemeProviderInherited oldWidget) {
    return oldWidget.themeMode != themeMode ||
        oldWidget.onThemeModeChanged != onThemeModeChanged;
  }

  bool get isDarkTheme => _isDarkTheme;

  static ThemeProviderInherited of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<ThemeProviderInherited>();
    assert(result != null, 'No ThemeProvider found in context');
    return result!;
  }
}
