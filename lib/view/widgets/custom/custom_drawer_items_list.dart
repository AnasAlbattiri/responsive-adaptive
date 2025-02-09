import 'package:flutter/material.dart';
import '../../model/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerItemsList extends StatelessWidget {
  const CustomDrawerItemsList({super.key, required this.items});

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          drawerItemModel: items[index],
        );
      },
    );
  }
}
