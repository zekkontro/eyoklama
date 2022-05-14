import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgConstants {
  static const String check = "assets/icons/check.svg";
  static const String cross = "assets/icons/cross.svg";
  static const String exit = "assets/icons/exit.svg";
  static const String logo = "assets/icons/logo.svg";
  static const String lock = "assets/icons/lock.svg";
  static const String person = "assets/icons/person.svg";
  static const String yokalama = "assets/icons/yokalama.svg";

  static  Widget buildIcon(String svgpath, double size) {
    return SvgPicture.asset(svgpath, height: size, width: size);
  }
 }