import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/ui/orientation_layout.dart';
import 'package:responsive_flutter_app/base/ui/screen_type_layout.dart';
import 'package:responsive_flutter_app/base/views/mobile/mobile_layout.dart';
import 'package:responsive_flutter_app/base/views/tablet/tablet_layout.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: MobilePortrait(),
        landscape: const MobileLandScape(),
      ),
      tablet: const TabletView(),
    );
  }
}
