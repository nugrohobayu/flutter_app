import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({super.key});

  @override
  State<ImagePick> createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  File? image;

  Future getImage() async {
    final picker = ImagePicker();
    final XFile? pickImage = await picker.pickImage(source: ImageSource.camera);
    image = File(pickImage!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
        leading: BackButton(color: Colors.black12),
      ),
      body: Center(
          child: Column(
        children: [
          image != null
              ? Container(
                  padding: EdgeInsets.all(20),
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(),
          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () async {
                await getImage();
              },
              child: Text(
                'Image',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      )),
    );
  }
}
