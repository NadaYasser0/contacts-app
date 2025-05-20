import 'package:contacts/models/action_button_model.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key, required this.actionButton});
  final ActionButtonModel actionButton;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: actionButton.buttonColor,
      ),
      child: IconButton(
        onPressed: actionButton.onClick,
        icon: Icon(
          actionButton.icon,
          color: actionButton.iconColor,
        ),
      ),
    );
  }
}
