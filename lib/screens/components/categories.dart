import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../themes.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['All', 'Italian', 'Mexican', 'Chinese'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 3.5, //35
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildcategoryItem(index),
        ),
      ),
    );
  }

  Widget buildcategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: selectedIndex == index
                ? const Color(0xFFEFF3EE)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16)),
        padding: EdgeInsets.symmetric(
          // horizontal: 20,
          // vertical: 20,
          horizontal: SizeConfig.defaultSize! * 3,
          vertical: SizeConfig.defaultSize! * 0.5,
        ),
        child: Text(
          categories[index],
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedIndex == index
                  ? kPrimaryColor
                  : const Color(0xFFC2C2B5)),
        ),
      ),
    );
  }
}
