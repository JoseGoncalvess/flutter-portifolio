import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({
    super.key,
    required this.position,
    required this.apresentation,
  });
  final String position;
  final String apresentation;

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Text(
                    textAlign: TextAlign.left,
                    widget.position,
                    style: GoogleFonts.roboto(
                      color: prymariColor,
                      fontSize: MediaQuery.sizeOf(context).width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.43,
                  child: Text(
                    widget.apresentation,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.sizeOf(context).width * 0.04,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset("../assets/profile.png", fit: BoxFit.cover),
        ],
      ),
    );
  }
}
