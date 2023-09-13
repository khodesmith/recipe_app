import 'package:flutter/material.dart';

// import '../../size_config.dart';
import '../../themes.dart';

class ProfileInfo extends StatelessWidget {
  final String name, image, email;
  const ProfileInfo({
    super.key,
    required this.name,
    required this.image,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    // double? defaultSize = SizeConfig.defaultSize;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 140, //defaultSize! * 14,
            width: 140, //defaultSize * 14,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 5, //defaultSize * 0.5,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            email,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xFF8492A2),
            ),
          )
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
