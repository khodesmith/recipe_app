import 'package:flutter/material.dart';

class RecipeBundle {
  final int id, chef, recipe;
  final String title, description, imageSrc;
  final Color color;

  RecipeBundle({
    required this.id,
    required this.chef,
    required this.recipe,
    required this.title,
    required this.description,
    required this.imageSrc,
    required this.color,
  });
}

//Demo List
List<RecipeBundle> recipeBundles = [
  RecipeBundle(
    id: 1,
    chef: 16,
    recipe: 95,
    title: 'Cook Something New Everyday',
    description: 'New and tasty recipes every minutes',
    imageSrc: 'assets/images/cook_new@2x.png',
    color: const Color(0xFFD82D40),
  ),
  RecipeBundle(
    id: 2,
    chef: 8,
    recipe: 26,
    title: 'Best of 2020',
    description: 'Cook recipe for special Occassions',
    imageSrc: 'assets/images/best_2020@2x.png',
    color: const Color(0xFF90AF17),
  ),
  RecipeBundle(
    id: 3,
    chef: 10,
    recipe: 43,
    title: 'Food Court',
    description: 'What\'s your favourite food dish, make it now',
    imageSrc: 'assets/images/food_court@2x.png',
    color: const Color(0xFF2DBBD8),
  ),
];
