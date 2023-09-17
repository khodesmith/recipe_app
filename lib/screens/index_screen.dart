import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/nav_items.dart';
import 'package:recipe_app/screens/components/bottom_nav_bar.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Consumer<NavItems>(
        builder: (context, value, child) => IndexedStack(
          index: value.selectedIndex,
          children: value.items.map((navItem) => navItem.destination!).toList(),
        ),
      ),
    );
  }
}
