import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/views/widget/drawer/app_drawer.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Expanded(
        child: Container(
          color: Colors.deepPurpleAccent,
        ),
      ),
      const CustomDrawer()
    ];
    var mediaQueryOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: mediaQueryOrientation == Orientation.portrait
          ? Column(
              children: children,
            )
          : Row(
              children: children.reversed.toList(),
            ),
    );
  }
}
