import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';
import 'package:smart_erp_hotel/Utils/utils.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  final GlobalKey<FormState> formKeyy = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    if (Utils.forLargeScreens(context)) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    }

    return Scaffold(
        key: formKeyy,
        appBar: Utils.forLargeScreens(context)
            ? null
            : AppBar(
                iconTheme: const IconThemeData(color: AppColors.MAIN_RED),
                elevation: 0,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: const Icon(BofaFont.BOFA_LOGO,
                    size: 80, color: AppColors.MAIN_RED),
                actions: [
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: IconButton(
                        onPressed: () {
                          //service.signOut();
                        },
                        iconSize: 30,
                        color: AppColors.MAIN_BACKGROUND,
                        icon: const Icon(Icons.exit_to_app),
                      ))
                ],
              ),
        backgroundColor:
            Utils.forLargeScreens(context) ? AppColors.MAIN_RED : Colors.white,
        body: const Column());
  }
}
