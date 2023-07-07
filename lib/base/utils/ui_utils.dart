import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/screen/device_screen_type.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQueryData) {
  final Orientation orientation = mediaQueryData.orientation;
  double deviceWidth = 0;

  if (orientation == Orientation.portrait) {
    deviceWidth = mediaQueryData.size.width;
  } else {
    deviceWidth = mediaQueryData.size.height;
  }

  if (deviceWidth >= 980) {
    return DeviceScreenType.Desktop;
  } else if (deviceWidth >= 640) {
    return DeviceScreenType.Tablet;
  } else {
    return DeviceScreenType.Mobile;
  }
}
