import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';

class circle_widget extends StatelessWidget {
  final Color textcolor, circleColor;
  final String roomNum;
  final String status;
  const circle_widget({
    super.key,
    required this.textcolor,
    required this.circleColor,
    required this.roomNum,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: circleColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Room #$roomNum",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: textcolor),
              ),
              Text(
                status,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textcolor),
              ),
              InkWell(
                onTap: () {
                  switch (status) {
                    case 'Checked Out':
                      PopupMenuButton<String>(
                        color: AppColors.contentColorWhite,
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'action1',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ];
                        },
                        onSelected: (String value) async {
                          // Handle the selected action here
                          switch (value) {
                            case 'action1':
                              break;

                            default:
                              break;
                          }
                        },
                      );
                      break;
                    case 'Pending / Cleaning':
                      PopupMenuButton<String>(
                        color: AppColors.contentColorWhite,
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'action1',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ];
                        },
                        onSelected: (String value) async {
                          // Handle the selected action here
                          switch (value) {
                            case 'action1':
                              break;

                            default:
                              break;
                          }
                        },
                      );

                      break;
                    case 'Booked':
                      PopupMenuButton<String>(
                        color: AppColors.contentColorWhite,
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'action1',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action2',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.view_compact,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Booking Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action3',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.view_compact,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Extend CheckOut',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ];
                        },
                        onSelected: (String value) async {
                          // Handle the selected action here
                          switch (value) {
                            case 'action1':
                              break;
                            case 'action2':
                              break;
                            case 'action3':
                              break;

                            default:
                              break;
                          }
                        },
                      );
                      break;

                    case 'Occupied':
                      PopupMenuButton<String>(
                        color: AppColors.contentColorWhite,
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'action1',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action2',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.view_compact,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Booking Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action3',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.view_compact,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Extend CheckOut',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ];
                        },
                        onSelected: (String value) async {
                          // Handle the selected action here
                          switch (value) {
                            case 'action1':
                              break;
                            case 'action2':
                              break;
                            case 'action3':
                              break;

                            default:
                              break;
                          }
                        },
                      );

                      break;
                    case 'Reserve':
                      PopupMenuButton<String>(
                        color: AppColors.contentColorWhite,
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'action1',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action2',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.view_compact,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Booking Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action3',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.view_compact,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Extend CheckOut',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ];
                        },
                        onSelected: (String value) async {
                          // Handle the selected action here
                          switch (value) {
                            case 'action1':
                              break;
                            case 'action2':
                              break;
                            case 'action3':
                              break;

                            default:
                              break;
                          }
                        },
                      );

                      break;
                    case 'Vacant':
                      PopupMenuButton<String>(
                        color: AppColors.contentColorWhite,
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'action1',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action2',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.book,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Book',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'action3',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.bookmark_add,
                                    size: 16,
                                    color: AppColors.contentColorRed,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Reserve',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ];
                        },
                        onSelected: (String value) async {
                          // Handle the selected action here
                          switch (value) {
                            case 'action1':
                              break;
                            case 'action2':
                              break;
                            case 'action3':
                              break;

                            default:
                              break;
                          }
                        },
                      );
                      break;

                    default:
                      break;
                  }
                },
                child: Icon(Icons.more_horiz, color: textcolor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
