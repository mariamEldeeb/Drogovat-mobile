import 'package:drogovat_mobile/core/widgets/back_icon.dart';
import 'package:drogovat_mobile/features/drawer_pages/contact_us/manager/contact_cubit.dart';
import 'package:drogovat_mobile/features/drawer_pages/contact_us/manager/contact_status.dart';
import 'package:drogovat_mobile/features/drawer_pages/contact_us/presentation/views/widgets/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/functions/show_snackbar.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_filled_btn.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  TextEditingController contactNameController = TextEditingController();
  TextEditingController contactEmailController = TextEditingController();
  TextEditingController contactMessageController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ContactCubit, ContactStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 25, color: darkBlueColor),
              ),
              leading: backIcon(),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: backgroundColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Image.asset(darkLogo),
                      const SizedBox(height: 30),
                      ContactItem(
                        label: 'Name',
                        maxLines: 1,
                        controller: contactNameController,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please, Enter your name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ContactItem(
                        label: 'Your Email',
                        maxLines: 1,
                        controller: contactEmailController,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please, Enter your Email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ContactItem(
                        label: 'Enter Your Message',
                        maxLines: 5,
                        controller: contactMessageController,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Please, Enter your problem';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      CustomFilledButton(
                        width: 150,
                        height: 50,
                        text: 'Send Message',
                        textColor: Colors.white,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            ContactCubit.get(context).sendEmail(
                              email: contactEmailController.text,
                              name: contactNameController.text,
                              message: contactMessageController.text,
                            );
                            if (state is SendEmailSuccessState) {
                              showSnackBar(
                                text: 'We will answer as soon as possible',
                                title: 'Email Sent',
                              );
                            } else {
                              showSnackBar(
                                text:
                                    'There is something wrong try again later',
                                title: 'Email doesn\'t send',
                              );
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    contactNameController.dispose();
    contactEmailController.dispose();
    contactMessageController.dispose();
    contactNameController.clear();
    contactEmailController.clear();
    contactMessageController.clear();
    super.dispose();
  }
}
