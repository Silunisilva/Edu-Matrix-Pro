import 'package:flutter/material.dart';
import '../constants/app_gradients.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const DashboardCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: AppGradients.dashboardCard,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ... (Rest of the card content remains same)
        ],
      ),
    );
  }
}