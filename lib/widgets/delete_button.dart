import 'package:contacts/utils/app_colors.dart';
import 'package:contacts/utils/app_fonts.dart';
import 'package:flutter/material.dart';

import 'custom_border.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.deleteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.delete_rounded,color: Colors.white,),
            SizedBox(width: 4),
            Text(
              'Delete',
              style: AppFonts.titleFont.copyWith(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
