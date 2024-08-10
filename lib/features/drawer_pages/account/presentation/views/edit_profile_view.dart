import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../../initial_page/presentation/manager/app_cubit/app_cubit.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();

    var cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = AppCubit.get(context).uModel;

        nameController.text = userModel?.name ?? '';
        emailController.text = userModel?.email ?? '';
        phoneController.text = userModel?.phone ?? '';

        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  IconlyLight.arrow_left,
                  color: darkBlueColor,
                  size: 40,
                ),
              ),
              title: const Text(
                'Edit Profile',
                style: Styles.textStyle25,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  children: [
                    if (state is UserUpdateLoadingState)
                      const LinearProgressIndicator(),
                    if (state is UserUpdateLoadingState)
                      const SizedBox(height: 10),
                    Container(
                      width: 115,
                      height: 115,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[500],
                        border: Border.all(color: backgroundColor, width: 6),
                      ),
                      child: Center(
                        child: Text(
                          AppCubit.get(context).uModel!.name![0].toUpperCase(),
                          style: const TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit Profile Image',
                        style: Styles.textStyle18
                            .copyWith(color: const Color(0xff4B63BC)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      // validator: validate,
                      style: Styles.textStyle22,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(fontSize: 20),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      // validator: validate,
                      style: Styles.textStyle22,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 20),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      // validator: validate,
                      style: Styles.textStyle22,
                      decoration: const InputDecoration(
                        labelText: 'Phone',
                        labelStyle: TextStyle(fontSize: 20),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        cubit.updateUser(
                          name: nameController.text,
                          phone: phoneController.text,
                          email: emailController.text,
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: darkBlueColor),
                        ),
                        child: Center(
                          child: Text(
                            'Save Changes',
                            style: Styles.textStyle16
                                .copyWith(color: darkBlueColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
