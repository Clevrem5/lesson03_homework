import 'package:flutter/material.dart'; // bu yerda men material paketini yuklab oldim

void main() =>
    runApp(const RecipeApp()); // bu yerda recipe appni ishga tushurish tugmasi

class RecipeApp extends StatelessWidget {  //recipe appni class yaratdik!

  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return  const MaterialApp( // Materila app packagdan keladi doim dasturda bir marotaba ishlatiladi!
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {  // return uchun Categories pagega alohida class olib o'tdim!
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orangeAccent, // dastur orqa oynasiga rang qo'yish

    );
  }
}