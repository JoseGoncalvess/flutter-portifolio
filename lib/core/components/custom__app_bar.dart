import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.titlePage = "",
    this.ontap,
    required this.context,
  });
  final String titlePage;
  final Function()? ontap;
  final BuildContext context;

  @override
  State<CustomAppBar> createState() => CustomAppBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.sizeOf(context).height * 0.1);
}

class CustomAppBarState extends State<CustomAppBar> {
  bool _opacity = false;
  bool _themerOption = false;

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
      toolbarHeight: MediaQuery.sizeOf(context).height * 0.1,
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
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        Switch(
          value: _themerOption,
          thumbIcon: WidgetStatePropertyAll(Icon(Icons.lightbulb)),
          onChanged: (value) {
            setState(() {
              _themerOption = value;
            });
          },
        ),
      ],
    );
  }
}
