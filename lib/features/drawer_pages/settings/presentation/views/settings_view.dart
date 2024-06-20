import 'package:drogovat_mobile/core/widgets/custom_outline_btn.dart';
import 'package:drogovat_mobile/core/widgets/custom_switch.dart';
import 'package:drogovat_mobile/features/drawer_pages/settings/presentation/manager/settings_cubit.dart';
import 'package:drogovat_mobile/features/drawer_pages/settings/presentation/manager/settings_states.dart';
import 'package:drogovat_mobile/features/drawer_pages/settings/presentation/views/widgets/build_settings_app_bar.dart';
import 'package:drogovat_mobile/features/registration/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/utils/colors.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  var oldPassController = TextEditingController();
  var newPassController = TextEditingController();
  var confirmNewPassController = TextEditingController();

  @override
  void dispose() {
    oldPassController.dispose();
    newPassController.dispose();
    confirmNewPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + 20),
          child: BuildSettingsAppBar(),
        ),
        body: BlocBuilder<SettingsCubit, SettingsStates>(
          builder: (context, state) {
            var cubit = SettingsCubit.get(context);

            return Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ExpansionTile(
                      childrenPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      textColor: darkBlueColor,
                      iconColor: darkBlueColor,
                      leading: buildExpansionLeadingIcon(
                          icon: IconlyLight.notification),
                      title: buildExpansionItem(text: 'Notification Settings'),
                      children: [
                        buildNotifyChild(
                          text: 'Notification sound',
                          switchValue: cubit.isNotifySwitchOn,
                          onChange: (val) {
                            cubit.changeNotifySwitchValue(val);
                          },
                        ),
                        buildNotifyChild(
                          text: 'Vibrate',
                          switchValue: cubit.isVibrateSwitchOn,
                          onChange: (val) {
                            cubit.changeVibrateSwitchValue(val);
                          },
                        ),
                      ],
                    ),
                    ExpansionTile(
                      childrenPadding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      textColor: darkBlueColor,
                      iconColor: darkBlueColor,
                      subtitle: Text(
                        'Change your password',
                        style: TextStyle(
                            fontSize: 18, color: Colors.black.withOpacity(0.5)),
                      ),
                      leading: buildExpansionLeadingIcon(
                        icon: Icons.password,
                      ),
                      title: buildExpansionItem(text: 'Password manager'),
                      children: [
                        Column(
                          children: [
                            CustomTextField(
                              controller: oldPassController,
                              hintText: 'Enter old password',
                              prefixIcon: FontAwesomeIcons.userLock,
                              isPassword: cubit.isOldPassword,
                              suffixIcon: cubit.suffixOldPassIcon,
                              suffixPressed: () {
                                cubit.changeOldPasswordVisibility();
                              },
                            ),
                            const SizedBox(height: 15),
                            CustomTextField(
                              controller: newPassController,
                              hintText: 'Enter new password',
                              prefixIcon: Icons.key,
                              isPassword: cubit.isNewPassword,
                              suffixIcon: cubit.suffixNewPassIcon,
                              suffixPressed: () {
                                cubit.changeNewPasswordVisibility();
                              },
                            ),
                            const SizedBox(height: 15),
                            CustomTextField(
                              controller: confirmNewPassController,
                              hintText: 'Confirm new password',
                              prefixIcon: FontAwesomeIcons.checkDouble,
                              isPassword: cubit.isConfirmNewPassword,
                              suffixIcon: cubit.suffixConfirmNewPassIcon,
                              suffixPressed: () {
                                cubit.changeConfirmNewPasswordVisibility();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          builder: (context) {
                            return Container(
                              height: 150,
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: const Column(
                                children: [
                                  Text(
                                    'Are you sure?',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CustomOutlineButton(
                                        text: 'Yes',
                                        isIcon: false,
                                        width: 150,
                                      ),
                                      CustomOutlineButton(
                                        text: 'No',
                                        isIcon: false,
                                        width: 150,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_circle_outline,
                                size: 30,
                                color: darkBlueColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Delete account',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Icon buildExpansionLeadingIcon({icon}) {
    return Icon(
      icon,
      size: 30,
      color: darkBlueColor,
    );
  }

  Row buildNotifyChild({text, switchValue, onChange}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        CustomSwitch(
          switchValue: switchValue,
          onChange: onChange,
        ),
      ],
    );
  }

  Widget buildExpansionItem({text}) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20),
    );
  }
}
