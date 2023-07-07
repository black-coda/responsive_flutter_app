import 'package:flutter/material.dart';


class MobileAppDrawer extends StatelessWidget {
  const MobileAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final widthOfScreen = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: Colors.deepPurple[400],
      width: orientation == Orientation.portrait
          ? 0.6 * widthOfScreen
          : 0.4 * widthOfScreen,
    );
  }
}