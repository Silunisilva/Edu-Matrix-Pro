import 'package:flutter/material.dart';
import '../widgets/gradient_scaffold.dart';
import '../widgets/dashboard_card.dart';
import '../constants/app_gradients.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const _TopAvatar(),
          
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                DashboardCard(title: "Inquiries", subtitle: "Pending : 13"),
                DashboardCard(title: "Teacher Applications", subtitle: "Pending : 04"),
                // ... Other cards
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Separate avatar widget for reusability
class _TopAvatar extends StatelessWidget {
  const _TopAvatar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Align(
        alignment: Alignment.topRight,
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/admin_avatar.png'),
        ),
      ),
    );
  }
}