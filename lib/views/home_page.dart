import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: _image == null ? Text('No image here') : Image.file(_image!),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: Get.width,
              child: ElevatedButton(
                child: Text('Camera'),
                onPressed: getImage,
              ),
            ),
          )
        ],
      ),
    );
  }
}
