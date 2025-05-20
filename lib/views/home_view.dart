import 'package:contacts/models/action_button_model.dart';
import 'package:contacts/models/data_caontact_model.dart';
import 'package:contacts/widgets/contact_item.dart';
import 'package:contacts/widgets/custom_show_bottom.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/custom_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0,bottom: 24),
                child: Image.asset("assets/images/appbar.png"),
              ),
              Expanded(
                child: GridView.builder(
                  itemBuilder:
                      (context, index) => ContactItem(
                        contactModel: DataContactModel(
                          email: 'email',
                          phone: 'phone',
                          name: 'name',
                          image: Image(
                            image: AssetImage('assets/images/user1.jpg'),
                          ),
                          onClick: () {},
                        ),
                      ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  childAspectRatio: 0.6,
                  ),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomActionButton(
            actionButton: ActionButtonModel(
              buttonColor: AppColors.deleteColor,
              icon: Icons.delete,
              iconColor: AppColors.secondaryColor,
              onClick: () {},
            ),
          ),
          SizedBox(height: 8),
          CustomActionButton(
            actionButton: ActionButtonModel(
              buttonColor: AppColors.secondaryColor,
              icon: Icons.add,
              iconColor: AppColors.primaryColor,
              onClick: () {
                showModalBottomSheet(
                  backgroundColor: AppColors.primaryColor,
                  context: context,
                  builder:
                      (build) => CustomShowBottom(
                        dataContact: DataContactModel(
                          email: 'email',
                          phone: 'phone',
                          name: "ahmed",
                          image: Image(
                            image: AssetImage("assets/images/appbar.png"),
                          ),
                          onClick: () {},
                        ),
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
