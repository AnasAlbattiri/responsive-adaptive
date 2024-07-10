import 'package:flutter/material.dart';
import 'package:resp_adpt/view/widgets/custom/custom_item.dart';

import 'custom_item_list.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2,child: CustomItem()),
        SizedBox(height: 16,),
        Expanded(child: CustomItemList()),
      ],
    );
  }
}
