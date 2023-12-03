import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/Utils/colors.dart';

class ButtonWithStyle extends StatefulWidget {
  final void Function()? onTap;
  final String name;
  final Color? color, iconColor;
  const ButtonWithStyle(
      {super.key, this.color, this.onTap, required this.name, this.iconColor});

  @override
  State<ButtonWithStyle> createState() => _ButtonWithStyleState();
}

class _ButtonWithStyleState extends State<ButtonWithStyle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 5),
      child: ElevatedButton.icon(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor:
                widget.color != null ? AppColors.MAIN_BACKGROUND : widget.color,
            minimumSize: const Size(double.infinity, 56),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                10,
              ),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ))),
        icon: Icon(
          CupertinoIcons.add,
          color: widget.iconColor != null ? Colors.white : widget.iconColor,
        ),
        label: Text(
          widget.name,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
