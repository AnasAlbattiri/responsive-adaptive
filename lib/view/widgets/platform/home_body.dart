import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:resp_adpt/view/widgets/platform/tablet_layout.dart';
import '../custom/adaptive_layout.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      child: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}

