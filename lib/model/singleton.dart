import 'package:flutter/material.dart';

class Singleton {
  static GlobalKey<NavigatorState> mainNav = GlobalKey();
  static GlobalKey<NavigatorState> secondaryNav = GlobalKey();
}
