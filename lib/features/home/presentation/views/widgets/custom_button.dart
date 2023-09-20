import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String buttonText;
  final Color? textColor;
  final Color? buttonColor;
  final double? fontSize;
  final BorderRadius? borderRadius;
  final Function()? onPressed;
  const CustomButton({
    super.key,
    required this.buttonText,
    this.textColor,
    this.fontSize,
    this.buttonColor,
    this.borderRadius,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor:buttonColor??Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius?? BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child:Text(buttonText,
          style: Styles.textStyle18.copyWith(
            color: textColor??Colors.black,
            fontSize: fontSize??18,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
    );
  }
}
