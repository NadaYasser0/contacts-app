import 'package:contacts/models/data_caontact_model.dart';
import 'package:contacts/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_fonts.dart';
import 'custom_buttom.dart';
import 'custom_text_field.dart';

class CustomShowBottom extends StatelessWidget {
  const CustomShowBottom({super.key, required this.dataContact});
  final DataContactModel dataContact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                width: 143,
                height: 146,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.secondaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // RTL
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      dataContact.name,
                      style: AppFonts.titleFont,
                      textDirection: TextDirection.ltr,
                    ),
                    const SizedBox(height: 12),
                    Container(height: 1, color: AppColors.secondaryColor),
                    const SizedBox(height: 12),
                    Text(
                      dataContact.email,
                      style: AppFonts.titleFont,
                      textDirection: TextDirection.ltr,
                    ),
                    const SizedBox(height: 12),
                    Container(height: 1, color: AppColors.secondaryColor),
                    const SizedBox(height: 12),
                    Text(
                      dataContact.phone,
                      style: AppFonts.titleFont,
                      textDirection: TextDirection.ltr,
                    ),
                    const SizedBox(height: 8),

                  ],
                ),
              ),
            ],
          ),
          CustomTextField(hint: 'Name'),
          CustomTextField(hint: 'Email'),
          CustomTextField(hint: 'Phone'),
          CustomButtom(onPressed: () {}),
        ],
      ),
    );
  }
}
