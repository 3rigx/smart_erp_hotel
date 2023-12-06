import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';

Future editDialog(
  BuildContext context,
  double width,
  double height, {
  required String roomNum,
  required String roomDesc,
  required String roomType,
  required String roomStatus,
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
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.edit,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                              Row(
                                children: [
                                  const Text(
                                    'Room ID',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    roomNum,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Room Description',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                roomDesc,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
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
                                          'UPDATE',
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
