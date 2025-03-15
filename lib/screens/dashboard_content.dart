import 'package:flutter/material.dart';
import '../controllers/teacher_dashboard_controller.dart';
import '../widgets/course_item.dart';
import '../widgets/material_item.dart';
import 'package:provider/provider.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TeacherDashboardController>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          _buildHeader(),
          const SizedBox(height: 30),
          _buildCombinedSections(context, controller),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30, // Increased avatar size for better impact
            backgroundImage: AssetImage('assets/teacher_avatar.png'),
            backgroundColor: Colors.indigo, // Add background color to avatar
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              Text(
                'Teacher',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCombinedSections(
      BuildContext context, TeacherDashboardController controller) {
    return Card(
      elevation: 5, // Increased elevation for depth
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)), // More rounded corners
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSection(
              context,
              icon: Icons.school,
              title: 'Active Courses (${controller.courses.length})',
              content: Column(
                children: controller.courses
                    .map((course) => CourseItem(course: course))
                    .toList(),
              ),
            ),
            const Divider(height: 40, thickness: 1, color: Colors.grey),
            _buildSection(
              context,
              icon: Icons.library_books,
              title: 'Teaching Materials',
              content: Column(
                children: controller.materials
                    .map((material) => MaterialItem(material: material))
                    .toList(),
              ),
              trailing: IconButton(
                icon:
                    const Icon(Icons.add_circle_outline, color: Colors.indigo),
                onPressed: () {
                  // Add new material functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Widget content,
    Widget? trailing,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.indigo, size: 32), // Larger icon size
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
        const SizedBox(height: 16),
        content,
      ],
    );
  }
}
