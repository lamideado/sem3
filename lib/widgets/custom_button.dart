import 'package:flutter/material.dart';
import 'package:sem3/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onTap;
  final Color? colorBorder;
  final Color? textColor;
  final double height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color = primary,
    this.colorBorder,
    this.textColor,
    this.height = 56,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            border: colorBorder == null
                ? null
                : Border.all(color: colorBorder!, width: 2),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
