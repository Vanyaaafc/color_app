import 'dart:math';
import 'package:color_application/shared/constants/app_constants.dart';
import 'package:color_application/shared/strings/app_strings.dart';
import 'package:color_application/shared/styles/app_styles.dart';
import 'package:flutter/material.dart';

/// Screen with a changeable background color
class ChangeColorScreen extends StatefulWidget {
  /// Constructor for `ChangeColorScreen`
  const ChangeColorScreen({super.key});

  @override
  State<ChangeColorScreen> createState() => _ChangeColorScreenState();
}

class _ChangeColorScreenState extends State<ChangeColorScreen> {
  Color _backgroundColor = Colors.white;
  final Random _random = Random();

  /// Changes the background color to a random RGB value
  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color.fromARGB(
        AppConstants.alpha,
        _random.nextInt(AppConstants.maxColorValue),
        _random.nextInt(AppConstants.maxColorValue),
        _random.nextInt(AppConstants.maxColorValue),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: AppConstants.animationDurationMs,
          ),
          color: _backgroundColor,
          child: const Center(
            child: Text(AppStrings.helloThere, style: AppStyles.titleStyle),
          ),
        ),
      ),
    );
  }
}
