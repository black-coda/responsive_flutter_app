import 'package:flutter/material.dart';

class TabletPortraitAppDrawer extends StatelessWidget {
  const TabletPortraitAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: const BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.white60,
          )
        ],
      ),
    );
  }
}

class TabletLandScapeAppDrawer extends StatelessWidget {
  const TabletLandScapeAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: const BoxDecoration(
        color: Colors.yellowAccent,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Color.fromARGB(153, 255, 0, 0),
          )
        ],
      ),
    );
  }
}
