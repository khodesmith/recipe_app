import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/themes.dart';

class ProfileMenuWidget extends StatelessWidget {
  final String menuIcon;
  final String description;
  final void Function()? press;

  const ProfileMenuWidget(
      {super.key,
      required this.menuIcon,
      required this.description,
      this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  SvgPicture.asset(menuIcon),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: kTextLigntColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: kTextLigntColor,
            ),
          ],
        ),
      ),
    );
  }
}
