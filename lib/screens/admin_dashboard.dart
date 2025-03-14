import 'package:flutter/material.dart';
import '../widgets/gradient_scaffold.dart';
import '../widgets/dashboard_card.dart';
import '../widgets/avatar_widget.dart'; // Import the AvatarWidget
import '../screens/student_inquiries_screen.dart'; // Import the Inquiries Screen
import '../screens/teacher_applications_list_screen.dart'; // Import the Teacher Applications List Screen
import '../screens/student_management_screen.dart'; // Import the Student Management Screen

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const AvatarWidget(), // Use the AvatarWidget
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                DashboardCard(
                  title: "Inquiries",
                  subtitle: "Pending : 13",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentInquiriesScreen()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                DashboardCard(
                  title: "Teacher Applications",
                  subtitle: "Pending : 04",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeacherApplicationsListScreen()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                DashboardCard(
                  title: "Student Management",
                  subtitle: "543 students",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentManagementScreen()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                DashboardCard(title: "Teacher Management", subtitle: "Pending : 13"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
