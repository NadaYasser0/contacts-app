import 'package:contacts/utils/app_fonts.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'custom_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
        errorBorder: customBorder(),
        hintText: "Enter User $hint",
        hintStyle: AppFonts.titleFont.copyWith(
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
