import 'package:flutter/material.dart'; // bu yerda men material paketini yuklab oldim

void main() => runApp(const RecipeApp());// bu yerda recipe appni ishga tushurish tugmasi

class RecipeApp extends StatelessWidget {//recipe appni class yaratdik!
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {  //
    return MaterialApp(
      home: CategoriesPage(),
    );
  }
}
