import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZStack([
      VxBox().orange500.alignTopCenter.make().wFull(context).h(160),
      ClipPath(
        clipper: NotchClipper(),
        child: VxBox(
          child: VStack(
            [
              const SizedBox(height: 50),
              Image.asset(
                'assets/logo.png',
                width: 150,
              ),
            ],
          ),
        ).white.alignTopCenter.make().wFull(context).h(160),
      ),
    ]);
  }
}

class NotchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var notchHeight = 40;
    var rHeight = 10;

    path.lineTo(0.0, size.height - notchHeight);
    path.quadraticBezierTo(
      size.width * 0.35 - rHeight,
      size.height - notchHeight,
      size.width * 0.35,
      size.height - notchHeight + rHeight,
    );
    path.quadraticBezierTo(
      size.width * 0.5 - notchHeight + rHeight,
      size.height,
      size.width * 0.5,
      size.height,
    );
    path.quadraticBezierTo(
      size.width * 0.5 + notchHeight - rHeight,
      size.height,
      size.width * 0.65,
      size.height - notchHeight + rHeight,
    );
    path.quadraticBezierTo(
      size.width - (size.width * 0.35) + rHeight,
      size.height - notchHeight,
      size.width,
      size.height - notchHeight,
    );
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
