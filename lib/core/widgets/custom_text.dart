import 'package:flutter/material.dart';

const h1 = 32.0;
const h2 = 24.0;
const h3 = 18.0;
const h4 = 16.0;
const h5 = 14.0;
const h6 = 12.0;

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = h6,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
    this.color,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}