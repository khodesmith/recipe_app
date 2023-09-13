import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/screens/components/profile_info.dart';
import 'package:recipe_app/screens/components/profile_menu_widget.dart';
// import 'package:recipe_app/size_config.dart';
import 'package:recipe_app/themes.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    // double? defaultSize = SizeConfig.defaultSize;
    return Column(
      children: [
        SizedBox(
          height: 240, //defaultSize! * 24
          child: Stack(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: 150, //defaultSize * 15,
                  color: kPrimaryColor,
                ),
              ),
              const ProfileInfo(
                email: 'supersunlarry@gmail.com',
                name: 'Azeez Lasisi',
                image: 'assets/images/pic.png',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ProfileMenuWidget(
          menuIcon: 'assets/icons/bookmark_fill.svg',
          description: 'Saved Recipes',
          press: () {},
        ),
        ProfileMenuWidget(
          menuIcon: 'assets/icons/chef_color.svg',
          description: 'Super Plan',
          press: () {},
        ),
        ProfileMenuWidget(
          menuIcon: 'assets/icons/language.svg',
          description: 'Change Language',
          press: () {},
        ),
        ProfileMenuWidget(
          menuIcon: 'assets/icons/info.svg',
          description: 'Help',
          press: () {},
        ),
      ],
    );
  }
}
