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
    return Container(
      color: AppColors.contentColorRed,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.menu,
                        color: AppColors.contentColorWhite,
                        size: 26,
                      ),
                    ),
                  ),
                  Container(
                    color: AppColors.contentColorWhite,
                    child: Image.network(
                      'https://www.softsmarterp.com/images/smedia.png',
                      //   width: 220,
                      height: 56,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  //menu
                  // if (Utils.forLargeScreens(context)) const HeaderWebMenu(),
                  const HeaderWebMenu(),
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/regScreen');
                      },
                      child: Container(
                        //   width: 30.0,
                        //   height: 30.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors
                                .contentColorWhite // You can set the color as per your preference
                            ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'K',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: AppColors
                                    .contentColorRed, // You can set the text color as per your preference
                              ),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_horiz,
                      color: AppColors.contentColorWhite,
                      size: 26,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
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
