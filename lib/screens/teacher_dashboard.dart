import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/teacher_dashboard_controller.dart';

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TeacherDashboardController(),
      child: Consumer<TeacherDashboardController>(
        builder: (context, controller, child) {
          return Scaffold(
            body: controller.pages[controller.selectedIndex], // ✅ Fixed error!
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.selectedIndex,
              onTap: controller.onItemTapped,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.indigo,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: 'Notifications'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.video_collection),
                    label: 'Uploaded Videos'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          );
        },
      ),
    );
  }
}
