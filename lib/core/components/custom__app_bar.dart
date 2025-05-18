import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.titlePage = "", this.ontap});
  final String titlePage;
  final Function()? ontap;

  @override
  State<CustomAppBar> createState() => CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomAppBarState extends State<CustomAppBar> {
  bool _opacity = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _opacity = !_opacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroudColor,
      title: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        switchInCurve: Curves.decelerate,
        switchOutCurve: Curves.decelerate,
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: Text(
          key: ValueKey<String>(widget.titlePage),
          widget.titlePage,
          style: GoogleFonts.roboto(
            color: prymariColor,
            fontSize: MediaQuery.sizeOf(context).width * 0.1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () => widget.ontap,
          icon: Icon(
            Icons.menu,
            color: prymariColor,
            size: MediaQuery.sizeOf(context).width * 0.1,
          ),
        ),
      ],
    );
  }
}
