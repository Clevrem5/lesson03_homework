import 'package:flutter/material.dart';

//
void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1C0F0D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainCategoryItem(image: "assets/seafood.png", text: "Seafood"),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/lunch.png", text: "Lunch"),
              CategoryItem(image: "assets/breakfast.png", text: "Breakfast"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dinner.png", text: "Dinner"),
              CategoryItem(image: "assets/vegan.png", text: "Vegan"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dessert.png", text: "Dessert"),
              CategoryItem(
                image: "assets/drinks.png",
                text: "Drinks",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 159,
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 6),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
