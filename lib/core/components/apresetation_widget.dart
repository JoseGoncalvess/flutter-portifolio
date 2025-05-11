import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class ApresetationWidget extends StatefulWidget {
  const ApresetationWidget({
    super.key,
    required this.nameTitle,
    required this.position,
    required this.description,
  });

  final String nameTitle;
  final String position;
  final String description;

  @override
  State<ApresetationWidget> createState() => _ApresetationWidgetState();
}

class _ApresetationWidgetState extends State<ApresetationWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.nameTitle,
            style: GoogleFonts.bebasNeue(
              color: Colors.white,
              fontSize: MediaQuery.sizeOf(context).width * 0.04,
            ),
          ),
          Text(
            widget.position,
            style: GoogleFonts.bebasNeue(
              color: prymariColor,
              fontSize: MediaQuery.sizeOf(context).width * 0.09,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.description,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: MediaQuery.sizeOf(context).width * 0.04,
            ),
          ),
        ],
      ),
    );
  }
}
