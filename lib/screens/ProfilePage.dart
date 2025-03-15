import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEditing = false;
  TextEditingController nameController =
      TextEditingController(text: "John Doe");
  TextEditingController emailController =
      TextEditingController(text: "johndoe@example.com");
  TextEditingController phoneController =
      TextEditingController(text: "+1 234 567 890");
  TextEditingController bioController = TextEditingController(
      text:
          "Passionate educator dedicated to helping students succeed. Experienced in teaching and mentoring.");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          if (!isEditing)
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                setState(() {
                  isEditing = true;
                });
              },
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            Stack(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile_picture.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 18,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt,
                          size: 18, color: Colors.white),
                      onPressed: () {
                        // Add functionality to update profile picture
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Editable Profile Fields
            _buildProfileField("Name", nameController),
            _buildProfileField("Email", emailController),
            _buildProfileField("Phone", phoneController),
            _buildProfileField("Bio", bioController, maxLines: 3),

            const SizedBox(height: 20),

            // Save Button (Visible only in edit mode)
            if (isEditing)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isEditing = false;
                    });
                  },
                  child: const Text("Save Changes"),
                ),
              ),

            const SizedBox(height: 20),

            // Logout Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Add logout functionality here
                },
                icon: const Icon(Icons.logout, color: Colors.red),
                label:
                    const Text("Logout", style: TextStyle(color: Colors.red)),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  side: const BorderSide(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build profile fields
  Widget _buildProfileField(String label, TextEditingController controller,
      {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        readOnly: !isEditing,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          filled: !isEditing,
          fillColor: isEditing ? Colors.white : Colors.grey.shade200,
        ),
      ),
    );
  }
}
