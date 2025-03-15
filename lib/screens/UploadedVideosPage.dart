import 'package:flutter/material.dart';

class UploadedVideosPage extends StatelessWidget {
  const UploadedVideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Uploaded Videos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Uploaded Videos Page Content Here'),
          ],
        ),
      ),
    );
  }
}
