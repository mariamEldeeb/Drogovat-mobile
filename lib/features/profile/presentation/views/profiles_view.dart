import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/custom_bottom_nav_bar.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/widgets/profiles_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilesView extends StatefulWidget {
  const ProfilesView({super.key});

  @override
  State<ProfilesView> createState() => _ProfilesViewState();
}

class _ProfilesViewState extends State<ProfilesView> {
  int _selectedIndex = 0;

  void onTap(int indx) {
    setState(() {
      _selectedIndex = indx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ProfilesViewBody(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          width: 78,
          height: 78,
          child: FloatingActionButton(
            onPressed: () {},
            child: Container(
              width: 78,
              height: 78,
              decoration: ShapeDecoration(
                shape: OvalBorder(),
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    Color(0xFF0E6ABF),
                    Color(0xFF0E6ABF),
                    Color(0xFF37C3CC),
                  ],
                ),
              ),
              child: Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 55,
              ),
            ),
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.only(left: 40, right: 40, top: 5),
          notchMargin: 9,
          shape: CircularNotchedRectangle(),
          // AutomaticNotchedShape(
          //   RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(20),
          //       topLeft: Radius.circular(20),
          //     ),
          //   ),
          //   StadiumBorder(),
          // ),
          color: darkBlueColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => onTap(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _selectedIndex == 0
                        ? SvgPicture.asset(
                            personIcon,
                            color: Colors.white,
                          )
                        : SvgPicture.asset(
                            personIcon,
                      height: 45,
                      width: 45,
                      fit: BoxFit.contain,
                          ),
                    _selectedIndex == 0
                        ? Text(
                            'Patients',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => onTap(1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _selectedIndex == 1
                        ? SvgPicture.asset(
                            drugIcon,
                            width: 45,
                            height: 45,
                            fit: BoxFit.contain,
                            color: Colors.white,
                            // color: Colors.white,
                          )
                        : SvgPicture.asset(
                            drugIcon,
                            width: 45,
                            height: 45,
                            fit: BoxFit.contain,
                            // color: Colors.white,
                          ),
                    _selectedIndex == 1
                        ? Text(
                            'Drugs',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}