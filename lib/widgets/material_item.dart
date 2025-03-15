import 'package:flutter/material.dart';
import '../models/material_model.dart';
import 'package:provider/provider.dart';
import '../controllers/teacher_dashboard_controller.dart';

class MaterialItem extends StatelessWidget {
  final MaterialModel material;

  const MaterialItem({super.key, required this.material});

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<TeacherDashboardController>(context, listen: false);

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.insert_drive_file, color: Colors.indigo),
      ),
      title: Text(material.title,
          style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text('Uploaded ${material.time}',
          style: TextStyle(color: Colors.grey.shade600)),
      trailing: PopupMenuButton<String>(
        onSelected: (value) {
          if (value == 'delete') {
            _showDeleteDialog(context, controller);
          }
        },
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'delete',
            child: Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(
      BuildContext context, TeacherDashboardController controller) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete Material"),
        content: const Text("Are you sure you want to delete this material?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // Close dialog
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              controller.deleteMaterial(material);
              Navigator.pop(context); // Close dialog after deletion
            },
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
