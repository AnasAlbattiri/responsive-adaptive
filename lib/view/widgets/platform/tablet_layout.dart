import 'package:flutter/material.dart';
import 'package:resp_adpt/view/widgets/tablet/custom_list.dart';
import '../custom/custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomList(),
        Expanded(child: CustomSliverList()),
      ],
    );
  }
}
