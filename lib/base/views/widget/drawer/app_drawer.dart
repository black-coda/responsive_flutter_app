import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/ui/orientation_layout.dart';
import 'package:responsive_flutter_app/base/ui/screen_type_layout.dart';
import 'package:responsive_flutter_app/base/views/widget/drawer/mobile/app_drawer_mobile.dart';
import 'package:responsive_flutter_app/base/views/widget/drawer/tablet/app_drawer_tablet.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: MobileAppDrawer(),
      tablet: OrientationLayout(
        portrait: TabletPortraitAppDrawer(),
        landscape: TabletLandScapeAppDrawer(),
      ),
    );
  }
}
