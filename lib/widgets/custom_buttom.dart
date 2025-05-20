import 'package:contacts/utils/app_colors.dart';
import 'package:contacts/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,

      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text('Enter User', style: AppFonts.title2Font.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        )),
      ),
    );
  }
}
