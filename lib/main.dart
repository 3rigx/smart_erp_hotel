import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_erp_hotel/login/login.dart';
import 'package:smart_erp_hotel/my_app_views/room_services.dart';
import 'package:smart_erp_hotel/root.dart';

import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Smart ERP Hotel',
      // theme: ThemeData(primarySwatch: AppColors.contentColorRed),
      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}

class AppModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const Root(), children: [
      ChildRoute(
        '/login',
        child: (context) => const LoginPage(),
      ),
    ]);
    r.module('/Main', module: MainModule());
  }
}

class MainModule extends Module {
  @override
  void routes(r) {
    r.child('/RoomBooking', child: (context) => const MyApp(), children: [
      ChildRoute('/RoomService', child: (context) => const RoomService()),
    ]);
  }
}
