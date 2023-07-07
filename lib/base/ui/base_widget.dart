import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/ui/sizing_information.dart';
import 'package:responsive_flutter_app/base/utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({super.key, required this.builder});
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var deviceScreenType = getDeviceScreenType(mediaQuery);
    final screenSize = mediaQuery.size;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var sizingInformation = SizingInformation(
            orientation: mediaQuery.orientation,
            deviceScreenType: deviceScreenType,
            screenSize: screenSize,
            localWidgetSize: Size(
              constraints.maxWidth,
              constraints.maxHeight,
            ));
        return builder(context, sizingInformation);
      },
    );
  }
}
