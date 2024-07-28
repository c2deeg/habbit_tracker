import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  double? textSize;
  RoundedButton(
      {required this.text, required this.onPressed, required this.width,this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,
      decoration: BoxDecoration(
          color: Color(0xFFB4CCEB), // Background color
          shape: BoxShape.rectangle, // Ci
          borderRadius: BorderRadius.circular(50.0) // rcular shape
      ),
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          elevation: 0, // No elevation shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(
              vertical: 12.0, horizontal: 24.0), // Padding for the button
        ),
        child: Text(
          text,
          style:  TextStyle(
            color: Colors.black,
            fontSize:textSize?? 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),
    );
  }
}
