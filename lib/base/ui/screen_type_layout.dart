import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/screen/device_screen_type.dart';
import 'package:responsive_flutter_app/base/ui/base_widget.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ScreenTypeLayout({super.key, this.mobile, this.tablet, this.desktop});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile) {
          if (mobile != null) {
            return mobile!;
          }
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.Tablet) {
          if (tablet != null) {
            return tablet!;
          }
        }

        return desktop!;
      },
    );
  }
}
