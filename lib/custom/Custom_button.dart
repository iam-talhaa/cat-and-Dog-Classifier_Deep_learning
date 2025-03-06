import 'package:flutter/material.dart';

class Custom_button extends StatefulWidget {
  final B_height;
  final B_width;
  final B_Text;
  final B_color;
  final B_text_color;
  VoidCallback ontap;

  Custom_button(
      {super.key,
      required this.B_Text,
      required this.B_color,
      required this.B_height,
      required this.B_text_color,
      required this.B_width,
      required this.ontap});

  @override
  State<Custom_button> createState() => _Custom_buttonState();
}

class _Custom_buttonState extends State<Custom_button> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: widget.ontap,
        child: Container(
          height: widget.B_height,
          width: widget.B_width,
          decoration: BoxDecoration(
              color: widget.B_color, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              widget.B_Text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: widget.B_text_color),
            ),
          ),
        ),
      ),
    );
  }
}
