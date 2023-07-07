import 'package:flutter/material.dart';

class MobilePortraitDrawerItem extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  const MobilePortraitDrawerItem({super.key, this.title, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            size: 25,
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
            title ?? "",
            style: const TextStyle(fontSize: 21),
          )
        ],
      ),
    );
  }
}

class MobileLandscapeDrawerItem extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  const MobileLandscapeDrawerItem({super.key, this.title, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(
        iconData,
        size: 30,
      ),
    );
  }
}
