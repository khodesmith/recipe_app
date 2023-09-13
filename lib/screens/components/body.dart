import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/screens/components/recipe_bundle_card.dart';
import 'package:recipe_app/size_config.dart';
// import 'package:recipe_app/themes.dart';
import 'package:recipe_app/models/recipe_bundle.dart';
// import 'package:spacer/spacer.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Categories(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
              itemCount: recipeBundles.length,
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
                recipeBundle: recipeBundles[index],
                // press: () {},
              ),
            ),
          )),
        ],
      ),
    );
  }
}
