import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/my_app.dart';

import 'package:smart_erp_hotel/splashpage.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    const user = true;
    // final GlobalKey<FormState> formmKey = GlobalKey<FormState>();
    if (user == false) {
      return SplashPage();
    } else {
      return const MyApp();
    }
  }
}
