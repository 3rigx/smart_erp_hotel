// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';
import 'package:smart_erp_hotel/login/login.dart';

class SplashPage extends StatelessWidget {
  int? duration = 0;
  String? goToPage;

  SplashPage({
    super.key,
    this.goToPage,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
    return Scaffold(
        body: Container(
      color: AppColors.contentColorWhite,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://www.softsmarterp.com/images/smedia.png',
            // width: 200,
            //  height: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: const Stack(
              children: [
                SizedBox(
                    width: 180,
                    height: 180,
                    child: CircularProgressIndicator(
                        strokeWidth: 10,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red))),
                SizedBox(
                    width: 180,
                    height: 180,
                    child: Icon(BofaFont.BOFA_LOGO,
                        size: 150, color: Colors.white))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
