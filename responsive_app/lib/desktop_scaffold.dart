import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/utils/my_box.dart';
import 'package:responsive_app/utils/my_tiles.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultBackgroundColor,
        appBar: myAppBar,
        body: Row(
          children: [
            // open drawer
            myDrawer,

            // rest of the body
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  // 4 boxes
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        },
                      ),
                    ),
                  ),

                  // tiles
                  Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const MyTile();
                        }),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.grey[300],
                ))
              ],
            )),
          ],
        ));
  }
}
