import 'package:flutter/material.dart';

class OrientationLayout extends StatelessWidget {
  final Widget? landscape;
  final Widget? portrait;
  const OrientationLayout({super.key, this.landscape, this.portrait});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return landscape ?? portrait!;
    }
    return portrait!;
  }
}
