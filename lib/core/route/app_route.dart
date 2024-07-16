import 'package:flutter/material.dart';
import 'package:resep_makanan/core/route/app_route_name.dart';
import 'package:resep_makanan/feature/home/presentation/home_screen.dart';
import 'package:resep_makanan/feature/get_started/presentation/get_started_screen.dart';
import 'package:resep_makanan/feature/home/presentation/screen/recipe_detail_screen.dart';
import 'package:resep_makanan/feature/home/model/recipe_model.dart';

import '../../feature/get_started/presentation/get_started_screen.dart';
import '../../feature/home/presentation/home_screen.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.getStarted:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
      case AppRouteName.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRouteName.recipeDetail:
        final recipe = settings.arguments as RecipeModel;
        return MaterialPageRoute(
          builder: (_) => RecipeDetailScreen(recipe: recipe),
        );
      default:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
    }
  }
}
