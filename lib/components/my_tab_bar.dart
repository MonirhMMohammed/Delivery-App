// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:deliveryapp/models/food.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});

 List<Tab> _buildCategoryTabs() {
  return FoodCategory.values.map((category) {
    return Tab(
      text: category.toString().split('.').last,
    );
  }).toList();
 }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs()
      ),
    );
  }
}
