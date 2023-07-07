import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/views/widget/drawer/app_drawer.dart';

class MobilePortrait extends StatelessWidget {
  MobilePortrait({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ),
    );
  }
}

class MobileLandScape extends StatelessWidget {
  const MobileLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          CustomDrawer(),
        ],
      ),
    );
  }
}
