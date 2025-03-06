import 'package:cat_dog_calssifier/custom/Custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: _height / 2.3,
              width: _width,
              decoration: BoxDecoration(color: Colors.grey),
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
    );
  }
}
