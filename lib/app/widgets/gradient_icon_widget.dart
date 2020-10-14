/* by: https://github.com/digitaljoni */

import 'package:ecommerce_app/app/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  GradientIcon(
    this.icon,
    this.size,
  );

  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradientPrimary.createShader(rect);
      },
    );
  }
}
