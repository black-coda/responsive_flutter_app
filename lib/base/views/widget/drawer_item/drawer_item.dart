import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/ui/orientation_layout.dart';
import 'package:responsive_flutter_app/base/ui/screen_type_layout.dart';
import 'package:responsive_flutter_app/base/views/widget/drawer_item/mobile/item_mobile.dart';

class DrawerItem extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  const DrawerItem({super.key, this.title, this.iconData});

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: MobilePortraitDrawerItem(),
        landscape: MobileLandscapeDrawerItem(),
      ),
    );
  }
}
