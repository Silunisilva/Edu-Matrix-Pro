import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart'; // Make sure to add this package

class UploadPage extends StatefulWidget {
  final String fileType;

  const UploadPage({super.key, required this.fileType});

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final TextEditingController _titleController = TextEditingController();
  String? _filePath;

  void _uploadFile() {
    // Implement your file upload logic here
    if (_titleController.text.isEmpty || _filePath == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill all fields before uploading")),
      );
      return;
    }

    // Assuming the file is uploaded successfully
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("${widget.fileType} uploaded successfully!")),
    );

    // Clear inputs
    _titleController.clear();
    setState(() {
      _filePath = null;
    });
  }

  Future<void> _pickFile() async {
    // Pick a file using the file_picker package
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _filePath = result.files.single.path;
      });
    } else {
      // User canceled the picker
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("No file selected")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload ${widget.fileType}"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Upload a new ${widget.fileType}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Title field
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: "Enter ${widget.fileType} title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // File Picker (Upload button)
            ElevatedButton(
              onPressed: _pickFile,
              child: Text("Select ${widget.fileType}"),
            ),
            if (_filePath != null) ...[
              const SizedBox(height: 16),
              Text("Selected File: $_filePath"),
            ],

            const SizedBox(height: 20),

            // Upload Button
            ElevatedButton(
              onPressed: _uploadFile,
              child: Text("Upload ${widget.fileType}"),
            ),
          ],
        ),
      ),
    );
  }
}
