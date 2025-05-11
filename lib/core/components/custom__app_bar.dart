import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.titlePage = "", this.ontap});
  final String titlePage;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroudColor,
      title: Text(
        "INICIO",
        style: GoogleFonts.getFont(
          'Roboto',
          color: prymariColor,
          fontSize: MediaQuery.sizeOf(context).width * 0.1,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () => ontap,
          icon: Icon(
            Icons.menu,
            color: prymariColor,
            size: MediaQuery.sizeOf(context).width * 0.1,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
