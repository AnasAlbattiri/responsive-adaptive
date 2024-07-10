import 'package:flutter/material.dart';
import '../custom/custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AspectRatio(aspectRatio: 1, child: const CustomItem());
          },
          itemCount: 15,

        ),
      ),
    );
  }
}
