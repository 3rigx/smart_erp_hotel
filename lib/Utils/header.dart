import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';
import 'package:smart_erp_hotel/Utils/utils.dart';
import 'package:smart_erp_hotel/my_app_utils/menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final Size _size = MediaQuery.of(context).size;
    return Card(
      color: AppColors.contentColorRed,
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(0.0), // No curve on the top left
      //     topRight: Radius.circular(0.0), // No curve on the top right
      //     bottomLeft: Radius.circular(40.0), // Curve on the bottom left
      //     bottomRight: Radius.circular(40.0), // Curve on the bottom right
      //   ),
      // ),
      elevation: 5,
      child: Center(
        child: Utils.forLargeScreens(context)
            ? Row(
                children: [
                  // it  display only on mobile and tab
                  //not working

                  // if (!Utils.forLargeScreens(context))
                  //   Builder(
                  //       builder: (context) => IconButton(
                  //           onPressed: () {
                  //             Scaffold.of(context).openDrawer();
                  //           },
                  //           icon: const Icon(Icons.menu))),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.menu,
                            color: AppColors.contentColorWhite,
                            size: 28,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.network(
                        'https://www.softsmarterp.com/images/smedia.png',
                        width: 220,
                        height: 56,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  const Spacer(),
                  //menu
                  // if (Utils.forLargeScreens(context)) const HeaderWebMenu(),
                  const HeaderWebMenu(),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/regScreen');
                    },
                    child: Container(
                      // height: 45,
                      //  width: 80,
                      decoration: BoxDecoration(
                        color: AppColors.contentColorWhite,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "H",
                            style: TextStyle(
                                fontSize: 26, color: AppColors.contentColorRed),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_horiz,
                      color: AppColors.contentColorWhite,
                      size: 46,
                    ),
                  )
                ],
              )
            : Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(BofaFont.BOFA_LOGO,
                                size: 25, color: AppColors.MAIN_BACKGROUND)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Alliance Capitals",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.MAIN_BACKGROUND),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //menu
                    // if (Utils.forLargeScreens(context)) const HeaderWebMenu(),
                    const HeaderWebMenu(),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/regScreen');
                      },
                      child: Container(
                          // height: 45,
                          //  width: 80,
                          decoration: BoxDecoration(
                            color: AppColors.MAIN_BACKGROUND,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Register?",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
