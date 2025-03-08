import 'dart:io';

import 'package:cat_dog_calssifier/custom/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isloading = true;
  // File _image;
  final picker = ImagePicker();
  // List _output;
  Detect_image(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.6,
        imageMean: 127.5,
        imageStd: 127.5);
  }

  loadModel() async {}

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "D",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Text(
                    "og",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "&",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "C",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Text(
                    "at",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: _isloading
                  ? Container(
                      height: _height / 2.53,
                      width: _width,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image(image: AssetImage('assets/cat and dog.jpg')))
                  : Container(
                      height: _height / 2.3,
                      width: _width,
                      decoration: BoxDecoration(color: Colors.grey),
                      child: Text('false'),
                    ),
            ),
            Custom_button(
              B_Text: "Take Picture",
              B_color: Colors.blueAccent,
              B_height: 45.0,
              B_text_color: Colors.white,
              B_width: 140.0,
              ontap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Custom_button(
              B_Text: "Upload Pic",
              B_color: Colors.blueAccent,
              B_height: 45.0,
              B_text_color: Colors.white,
              B_width: 140.0,
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
