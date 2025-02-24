import 'package:flutter/material.dart';

class AppGradients {
  // Background gradient used in both screens
  static const LinearGradient scaffoldBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.white, Colors.lightBlue],
  );

  // Card gradient from dashboard
  static const LinearGradient dashboardCard = LinearGradient(
    colors: [Color(0xFF425586), Color(0xFF74E6EC)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Button gradient from login screen
  static const LinearGradient loginButton = LinearGradient(
    colors: [Color(0xFF74E6EC), Color(0xFF425586)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}