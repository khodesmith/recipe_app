import 'package:flutter/material.dart';
import 'package:recipe_app/screens/components/profile_body.dart';
import 'package:recipe_app/themes.dart';

// import 'components/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ProfileBody(),
      // bottomNavigationBar: const BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Azeez Profile'),
      backgroundColor: kPrimaryColor,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              'EDIT',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
