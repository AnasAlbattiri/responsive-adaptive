import 'package:flutter/material.dart';
import 'package:resp_adpt/view/widgets/custom/custom_dektop_widget.dart';
import 'package:resp_adpt/view/widgets/custom/custom_drawer.dart';
import 'package:resp_adpt/view/widgets/platform/tablet_layout.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3,child: TabletLayout(),),
        Expanded(child: Padding(padding: EdgeInsets.only(top: 16 ),child: CustomDesktopWidget())),
      ],
    );
  }
}
