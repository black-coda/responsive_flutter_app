import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {super.key,
      required this.mobileScaf,
      required this.tabletScaf,
      required this.desktopScaf});

  final Widget mobileScaf;
  final Widget tabletScaf;
  final Widget desktopScaf;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 590) {
          return mobileScaf;
        } else if (constraint.maxWidth < 1000) {
          return tabletScaf;
        } else {
          return desktopScaf;
        }
      },
    );
  }
}
