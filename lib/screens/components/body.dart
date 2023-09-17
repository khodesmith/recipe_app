import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/screens/components/recipe_bundle_card.dart';
import 'package:recipe_app/size_config.dart';
// import 'package:recipe_app/themes.dart';
import 'package:recipe_app/models/recipe_bundle.dart';
// import 'package:spacer/spacer.dart';

import 'categories.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<RecipeBundle> recipes = recipeBundles;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Categories(callBack: _filterRecipees),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
              itemCount: recipes.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                crossAxisSpacing:
                    SizeConfig.orientation == Orientation.landscape
                        ? SizeConfig.defaultSize! * 2
                        : 0,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) => RecipeBundleCard(
                recipeBundle: recipes[index],
                // press: () {},
              ),
            ),
          )),
        ],
      ),
    );
  }

  void _filterRecipees(String category) {
    setState(() {
      if (category.toLowerCase() == 'All'.toLowerCase()) {
        recipes = recipeBundles;
      } else {
        recipes = recipeBundles
            .where((recipe) => recipe.category == category)
            .toList();
      }
    });
  }
}
