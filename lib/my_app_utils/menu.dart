import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';
import 'package:smart_erp_hotel/Utils/cons.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {
            Modular.to.navigate('/RoomBooking');
          },
          title: "Room Booking",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Modular.to.navigate('/RoomService');
          },
          title: "Room Service",
        ),
        // const SizedBox(
        //   width: kPadding,
        // ),
        // HeaderMenu(
        //   press: () {
        //     Navigator.pushNamed(context, '/ContactUs');
        //   },
        //   title: "Contact",
        // ),
      ],
    );
  }
}

class MobFooterMenu extends StatelessWidget {
  const MobFooterMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, '/onBoarding');
          },
          title: "Room Booking",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, '/Services');
          },
          title: "Room Service",
        ),
        // const SizedBox(
        //   width: kPadding,
        // ),
        // HeaderMenu(
        //   press: () {
        //     Navigator.pushNamed(context, '/ContactUs');
        //   },
        //   title: "Contact",
        // ),
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 14, color: AppColors.contentColorWhite),
        ),
      ),
    );
  }
}

class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  _MobMenuState createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {},
            title: "Room Booking",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Room Service",
          ),
          // const SizedBox(
          //   height: kPadding,
          // ),
          // HeaderMenu(
          //   press: () {},
          //   title: "About",
          // ),
          // const SizedBox(
          //   height: kPadding,
          // ),
          // HeaderMenu(
          //   press: () {},
          //   title: "Reviews",
          // ),
          // const SizedBox(
          //   height: kPadding,
          // ),
          // HeaderMenu(
          //   press: () {},
          //   title: "Restaurants",
          // ),
        ],
      ),
    );
  }
}
