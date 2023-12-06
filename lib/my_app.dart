import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';
import 'package:smart_erp_hotel/Utils/utils.dart';
import 'package:smart_erp_hotel/model/dummydata.dart';
import 'package:smart_erp_hotel/my_app_utils/header.dart';
import 'package:smart_erp_hotel/widgets/circle_widget.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  bool grid = true;
  String nairaSymbol = '\u20A6';
  TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> formKeyy = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    List<Room> rooms = generateDummyRooms();
    if (Utils.forLargeScreens(context)) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    }

    return Scaffold(
        key: formKeyy,
        appBar: Utils.forLargeScreens(context) ? null : null,
        // : AppBar(
        //     iconTheme: const IconThemeData(color: AppColors.MAIN_RED),
        //     elevation: 0,
        //     backgroundColor: Colors.white,
        //     centerTitle: true,
        //     title: const Icon(BofaFont.BOFA_LOGO,
        //         size: 80, color: AppColors.MAIN_RED),
        //     actions: [
        //       Container(
        //           margin: const EdgeInsets.only(right: 20),
        //           child: IconButton(
        //             onPressed: () {
        //               //service.signOut();
        //             },
        //             iconSize: 30,
        //             color: AppColors.MAIN_BACKGROUND,
        //             icon: const Icon(Icons.exit_to_app),
        //           ))
        //     ],
        //   ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              color: AppColors.contentColorRed,
              child: Stack(
                children: [
                  Image.network(
                    'https://smart-erp.vercel.app/images/hotelHeaderImage.jpg',
                    fit: BoxFit.cover,
                    // height: 100,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      color: AppColors.contentColorBlack.withOpacity(0.5),
                      child: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          'Hotel Room Booking',
                          style: TextStyle(
                              color: AppColors.contentColorWhite,
                              fontSize: 58,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(width: 1, color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: searchController,
                            decoration: const InputDecoration(
                              hintText: 'Search Rooms',
                              contentPadding: EdgeInsets.all(10.0),
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(0.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.contentColorRed,
                                    width:
                                        2.0), // Set color to red and width to 2.0
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
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
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.filter_list,
                              color: AppColors.contentColorRed,
                              size: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  grid = true;
                                });
                              },
                              child: Card(
                                color: grid
                                    ? Colors.grey.withOpacity(0.1)
                                    : AppColors.contentColorWhite,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  bottomLeft: Radius.circular(5.0),
                                )),
                                elevation:
                                    4.0, // Add elevation for a subtle shadow
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.grid_on,
                                        color: AppColors.contentColorBlack,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  grid = false;
                                });
                              },
                              child: Card(
                                color: grid
                                    ? AppColors.contentColorWhite
                                    : Colors.grey.withOpacity(0.3),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                )),
                                elevation:
                                    4.0, // Add elevation for a subtle shadow
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.table_rows_outlined,
                                        color: AppColors.contentColorBlack,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: grid
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: rooms.map((data) {
                        return circle_widget(
                          textcolor: gettextColor(data),
                          circleColor: getCircleColor(data),
                          roomNum: data.roomNumber,
                          status: data.availability,
                        );
                      }).toList())
                  : DataTable(
                      columnSpacing: 56.0,
                      headingRowColor:
                          MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return AppColors.contentColorBlack.withOpacity(0.08);
                        }
                        return AppColors
                            .contentColorBlack; // Use the default value.
                      }),
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Room ID',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.contentColorWhite,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Room Number',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.contentColorWhite,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Cost',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.contentColorWhite,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.contentColorWhite,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Availabilty',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.contentColorWhite,
                            ),
                          ),
                        ),
                      ],
                      rows: rooms.map(
                        (data) {
                          return DataRow(
                            cells: [
                              DataCell(Text(data.roomId.toString())),
                              DataCell(Text(data.roomNumber)),
                              DataCell(
                                  Text('$nairaSymbol${data.cost.toString()}')),
                              DataCell(Text(data.description)),
                              DataCell(Text(data.availability)),
                            ],
                          );
                        },
                      ).toList(),
                    ),
            )
          ],
        ));
  }

  Color getCircleColor(Room room) {
    // Logic to determine color based on room properties
    if (room.availability == 'Checked Out') {
      return Colors.grey.withOpacity(0.5);
    } else if (room.availability == 'Pending / Cleaning') {
      return const Color.fromARGB(255, 206, 204, 204);
    } else if (room.availability == 'Booked') {
      return AppColors.contentColorRed;
    } else if (room.availability == 'Vacant') {
      return AppColors.contentColorGreen;
    } else if (room.availability == 'Occupied') {
      return AppColors.contentColorYellow;
    } else {
      return Colors.white;
    }
  }

  Color gettextColor(Room room) {
    // Logic to determine color based on room properties
    if (room.availability == 'Checked Out') {
      return Colors.black;
    } else if (room.availability == 'Pending / Cleaning') {
      return Colors.black;
    } else if (room.availability == 'Booked') {
      return Colors.white;
    } else if (room.availability == 'Vacant') {
      return Colors.white;
    } else if (room.availability == 'Occupied') {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
