 import 'package:flutter/material.dart';

 class TagClipper extends CustomClipper<Path> {
    @override
    Path getClip(Size size) {
      final path = Path();
      path.lineTo(size.width, 0.0);
      path.lineTo(size.width * 0.85, 0.0);
      path.lineTo(size.width, size.height * 0.50);
      path.lineTo(size.width * 0.85, size.height);
      path.lineTo(0.0, size.height);
      path.close();
      return path;
    }
  
    @override
    bool shouldReclip(CustomClipper oldClipper) {
      return true;
    }
  }