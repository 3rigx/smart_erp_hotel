import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';

Future customSinginDialog(
  BuildContext context,
  double width,
  double height, {
  required ValueChanged onClosed,
}) async {
  return showGeneralDialog(
      barrierDismissible: false,
      barrierLabel: "SMART ERP HOTEL",
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (_, animation, __, child) {
        Tween<Offset> tween;
        tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          ),
          child: child,
        );
      },
      pageBuilder: (context, _, __) => Center(
            child: Container(
              width: width,
              height: height,
              padding: const EdgeInsets.symmetric(
                vertical: 34,
                horizontal: 24,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.94),
                // borderRadius: const BorderRadius.all(
                //   Radius.circular(
                //     40,
                //   ),
                // ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(0, 30),
                    blurRadius: 60,
                  ),
                  const BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 30),
                    blurRadius: 60,
                  ),
                ],
              ),
              child: Scaffold(
                backgroundColor: AppColors.contentColorRed,
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Spacer(
                            flex: 1,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.more_horiz,
                              color: AppColors.contentColorWhite,
                              size: 22,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.cancel_outlined,
                              color: AppColors.contentColorWhite,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock,
                            color: AppColors.contentColorWhite,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("SMART ERP HOTEL",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.contentColorWhite,
                                      fontWeight: FontWeight.normal)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Password Recovery: Step 1 of 2",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: AppColors.contentColorWhite,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Please fill this form and click Continue button to recover the forgotten\npassword. Click Cancel to return to the previous screen.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.contentColorWhite,
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: width,
                      height: height / 2.5,
                      //   margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: Scaffold(
                        backgroundColor: AppColors.contentColorWhite,
                        body: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'FORGOT YOUR PASSWORD?',
                                style: TextStyle(fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Please enter a user name.',
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 10,
                                thickness: 2,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('* User Name'),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: width / 3,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Input Email";
                                        }

                                        return null;
                                      },
                                      onSaved: (email) {
                                        email = email;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 10,
                                thickness: 2,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'CANCEL',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'NEXT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )).then(onClosed);
}
