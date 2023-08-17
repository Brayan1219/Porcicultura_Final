import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileSplash;
  final Widget tabletSplash;
  final Widget desktopSplash;

  const ResponsiveLayout({
    super.key,
    required this.mobileSplash,
    required this.tabletSplash,
    required this.desktopSplash,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileSplash;
        } else if (constraints.maxWidth < 1100) {
          return tabletSplash;
        } else {
          return desktopSplash;
        }
      },
    );
  }
}