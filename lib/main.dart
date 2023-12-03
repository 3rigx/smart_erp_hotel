import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_erp_hotel/model/singleton.dart';
import 'package:smart_erp_hotel/root.dart';

import 'my_app.dart';
import 'splashpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            labelLarge: TextStyle(fontWeight: FontWeight.bold),
            labelSmall: TextStyle(fontWeight: FontWeight.bold),
            labelMedium: TextStyle(fontWeight: FontWeight.bold),
            bodyLarge: TextStyle(fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(fontWeight: FontWeight.bold),
            bodySmall: TextStyle(fontWeight: FontWeight.bold),
            displayLarge: TextStyle(fontWeight: FontWeight.bold),
            displayMedium: TextStyle(fontWeight: FontWeight.bold),
            displaySmall: TextStyle(fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontWeight: FontWeight.bold),
            titleSmall: TextStyle(fontWeight: FontWeight.bold),
          ),
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        navigatorKey: Singleton.mainNav,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/splash': (context) => SplashPage(),
          "/myapp": (BuildContext context) => const MyApp(),
          "/": (BuildContext context) => const Root(),
        });
  }
}
