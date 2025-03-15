import 'package:flutter/material.dart';
import 'upload_page.dart';
import 'uploaded_files_page.dart';
import '../widgets/resource_section.dart'; // Import the ResourceSection widget

class CourseDetailsPage extends StatelessWidget {
  final String courseTitle;
  final String students;
  final String classTime;

  const CourseDetailsPage({
    super.key,
    required this.courseTitle,
    required this.students,
    required this.classTime,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width to apply responsiveness
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(courseTitle),
        backgroundColor: Colors.blueAccent,
        elevation: 8,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Add settings or more options functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course Title
              Text(
                "📚 $courseTitle",
                style: TextStyle(
                  fontSize: screenWidth > 600 ? 28 : 22, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // Students Enrolled and Class Time
              Text(
                "👥 Students Enrolled: $students",
                style: TextStyle(
                  color: const Color.fromARGB(255, 102, 90, 173),
                  fontSize: screenWidth > 600 ? 18 : 16,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "🕒 Class Time: $classTime",
                style: TextStyle(
                  color: const Color.fromARGB(255, 103, 49, 146),
                  fontSize: screenWidth > 600 ? 18 : 16,
                ),
              ),
              const Divider(height: 30, thickness: 1, color: Colors.grey),

              // Resource Sections - Videos, Reading Materials, Assignments
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ],
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Video Section
                    ResourceSection(
                      title: "Videos",
                      onUploadPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadPage(fileType: "video"),
                          ),
                        );
                      },
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UploadedFilesPage(fileType: "video"),
                          ),
                        );
                      },
                      icon: Icons.video_library, // Icon for "Videos"
                    ),
                    const SizedBox(height: 20),

                    // Reading Materials Section
                    ResourceSection(
                      title: "Reading Materials",
                      onUploadPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UploadPage(fileType: "material"),
                          ),
                        );
                      },
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UploadedFilesPage(fileType: "material"),
                          ),
                        );
                      },
                      icon: Icons.book, // Icon for "Reading Materials"
                    ),
                    const SizedBox(height: 20),

                    // Assignments Section
                    ResourceSection(
                      title: "Assignments",
                      onUploadPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UploadPage(fileType: "assignment"),
                          ),
                        );
                      },
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UploadedFilesPage(fileType: "assignment"),
                          ),
                        );
                      },
                      icon: Icons.assignment, // Icon for "Assignments"
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
