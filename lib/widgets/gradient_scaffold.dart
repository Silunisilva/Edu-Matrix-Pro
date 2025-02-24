import 'package:flutter/material.dart';
import '../constants/app_gradients.dart';

class GradientScaffold extends StatelessWidget {
  final Widget child;
  
  const GradientScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppGradients.scaffoldBackground),
        child: child,
      ),
    );
  }
}