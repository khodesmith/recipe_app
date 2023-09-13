import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/recipe_bundle.dart';

class RecipeBundleCard extends StatelessWidget {
  final RecipeBundle recipeBundle;
  // final Function press;
  const RecipeBundleCard({
    super.key,
    required this.recipeBundle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      recipeBundle.title,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      recipeBundle.description,
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Spacer(),
                    buildInfoRow(
                      iconSrc: 'assets/icons/pot.svg',
                      rowText: '${recipeBundle.recipe} Recipes',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    buildInfoRow(
                      iconSrc: 'assets/icons/chef.svg',
                      rowText: '${recipeBundle.chef} Chefs',
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
            // const SizedBox(
            //   width: 5,
            // ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRow({String? iconSrc, rowText}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc!),
        const SizedBox(
          width: 10,
        ),
        Text(
          rowText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
