import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/nav_items.dart';
import 'package:recipe_app/themes.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        // height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -7),
              blurRadius: 30,
              color: const Color(0xFF4B1A39).withOpacity(0.2),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              navItems.items.length,
              (index) => buildIconNavbarItem(
                icon: navItems.items[index].icon,
                press: () {
                  navItems.changeNavIndex(index: index);
                },
                isActive: navItems.selectedIndex == index ? true : false,
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconNavbarItem(
      {String? icon, bool isActive = false, Function()? press}) {
    return IconButton(
      onPressed: press,
      icon: SvgPicture.asset(
        icon!,
        colorFilter: isActive
            ? ColorFilter.mode(kPrimaryColor, BlendMode.srcIn)
            : const ColorFilter.mode(Color(0xFFD1D4D4), BlendMode.srcIn),
        height: 22,
      ),
    );
  }
}
