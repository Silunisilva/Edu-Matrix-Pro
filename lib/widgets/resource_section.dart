import 'package:flutter/material.dart';

class ResourceSection extends StatelessWidget {
  final String title;
  final VoidCallback onUploadPressed;
  final VoidCallback onViewPressed;
  final IconData icon;

  const ResourceSection({
    super.key,
    required this.title,
    required this.onUploadPressed,
    required this.onViewPressed,
    required this.icon, // Accept an icon for each section (video, material, assignment)
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(bottom: 20), // Space between sections
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Left Column (Icon and Title)
            Expanded(
              flex: 2, // Make the icon and title take more space
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon at the top of the card
                  Icon(
                    icon,
                    size: 40,
                    color: const Color.fromARGB(255, 44, 29, 76),
                  ),
                  const SizedBox(height: 12),

                  // Title
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 22 : 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16), // Space between the two columns

            // Right Column (Upload and View buttons)
            Expanded(
              flex: 3, // Buttons will take up more space
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Upload Button
                  SizedBox(
                    width: double.infinity, // Make button width fill the space
                    child: ElevatedButton(
                      onPressed: onUploadPressed,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 136, 163, 236),
                        elevation: 5,
                      ),
                      child: Text(
                        "Upload",
                        style: TextStyle(
                          fontSize: screenWidth > 600 ? 18 : 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8), // Small space between buttons
                  // View Button
                  SizedBox(
                    width: double.infinity, // Make button width fill the space
                    child: ElevatedButton(
                      onPressed: onViewPressed,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.blueAccent,
                        elevation: 5,
                      ),
                      child: Text(
                        "View",
                        style: TextStyle(
                          fontSize: screenWidth > 600 ? 18 : 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
