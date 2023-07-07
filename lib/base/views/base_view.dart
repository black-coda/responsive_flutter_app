import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/ui/base_widget.dart';
import 'package:responsive_flutter_app/base/ui/sizing_information.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Material(
          child: Center(
            child: Column(
              children: [
                Text(sizingInformation.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
