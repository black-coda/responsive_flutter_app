import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/views/base_view.dart';

class DesktopScaf extends StatelessWidget {
  const DesktopScaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: const HomeView(),
    );
  }
}
