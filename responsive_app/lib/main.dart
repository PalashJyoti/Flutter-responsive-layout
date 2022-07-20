import 'package:flutter/material.dart';
import 'package:responsive_app/desktop_scaffold.dart';
import 'package:responsive_app/mobile_scaffold.dart';
import 'package:responsive_app/resposive_layout.dart';
import 'package:responsive_app/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
