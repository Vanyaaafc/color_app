import 'package:color_application/features/color_screen/presentation/change_color_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}
/// The main app widget
class Main extends StatelessWidget {
  ///Constructor Color App
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ChangeColorScreen(),
    );
  }
}
