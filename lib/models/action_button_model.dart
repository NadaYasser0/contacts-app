import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ActionButtonModel{
 ActionButtonModel ({
   required this.onClick,
   required this.buttonColor,
   required this.icon,
   required this.iconColor,
 });
 final Color iconColor;
 final Color buttonColor;
 final IconData icon;
 final Function() onClick;

}