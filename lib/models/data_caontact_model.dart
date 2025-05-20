import 'dart:ui';

import 'package:flutter/cupertino.dart';

class DataContactModel{
  DataContactModel ({
    required this.email,
    required this.phone,
    required this.name,
    required this.image,
    required this.onClick,
  });
  final String email;
  final String phone;
  final String name;
  final Image image;
  final Function() onClick;

}