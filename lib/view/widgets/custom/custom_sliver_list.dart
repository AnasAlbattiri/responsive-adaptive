import 'package:flutter/material.dart';
import 'custom_item_list.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 16,),
          child: CustomItemList(),
        );
      },
      itemCount: 100,
    );
  }

}
