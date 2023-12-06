import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Navigator.pushNamed(context, '/');
          },
          title: "Home",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, '/Services');
          },
          title: "Services",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, '/ContactUs');
          },
          title: "Contact",
        ),
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
          title: "Home",
        ),
        // const SizedBox(
        //   width: kPadding,
        // ),
        // HeaderMenu(
        //   press: () {
        //     Navigator.pushNamed(context, '/Services');
        //   },
        //   title: "Services",
        // ),
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
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
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
            title: "Menu",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "For Riders",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "About",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Reviews",
          ),
          const SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Restaurants",
          ),
        ],
      ),
    );
  }
}
