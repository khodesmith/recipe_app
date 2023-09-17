import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/nav_items.dart';
// import 'package:recipe_app/screens/home_screen.dart';
import 'package:recipe_app/screens/index_screen.dart';
// import 'package:recipe_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const IndexScreen(),
      ),
    );
  }
}
