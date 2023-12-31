import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/base/views/main_view.dart';

// import 'responsive/responsive.dart';
// import 'screen/desktop_scaffold.dart';
// import 'screen/mobile_scaffold.dart';
// import 'screen/tablet_scaffold.dart';

void main() {
  runApp(const AppEntry());
}

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainView()

        // ResponsiveWidget(
        //   mobileScaf: MobileScaf(),
        //   tabletScaf: TabletScaf(),
        //   desktopScaf: DesktopScaf(),
        // ),
        );
  }
}
