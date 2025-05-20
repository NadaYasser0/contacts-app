import 'package:contacts/models/data_caontact_model.dart';
import 'package:contacts/utils/app_colors.dart';
import 'package:contacts/widgets/custom_buttom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_fonts.dart';
import 'delete_button.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.contactModel});
  final DataContactModel contactModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 286,
      width: 177,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: contactModel.image.image,
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.secondaryColor,
                      ),
                      child: Text(
                        contactModel.name,
                        style: AppFonts.title2Font,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8,top: 8,right: 8),
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            height: 120,
            width: double.infinity,
            child: Column(
              children: [

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                      child: Icon(
                        Icons.email_rounded,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      contactModel.email,
                      style: AppFonts.title2Font.copyWith(fontSize: 10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                      child: Icon(
                        Icons.phone_in_talk_rounded,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      contactModel.email,
                      style: AppFonts.title2Font.copyWith(fontSize: 10),
                    ),
                  ],
                ),
                DeleteButton(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
