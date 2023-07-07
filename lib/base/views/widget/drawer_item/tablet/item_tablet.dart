import 'package:flutter/material.dart';

class TabletDrawerItemPortrait extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  const TabletDrawerItemPortrait({super.key, this.title, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            iconData,
            size: 45,
          ),
          Text(
            title ?? "",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
