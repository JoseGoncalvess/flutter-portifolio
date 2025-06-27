import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/helper/animateditem.dart';

class ApresetationWidget extends StatefulWidget {
  const ApresetationWidget({
    super.key,
    required this.nameTitle,
    required this.position,
    required this.description,
    required this.constexParent,
  });

  final String nameTitle;
  final String position;
  final String description;
  final BoxConstraints constexParent;

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
          AnimatedItem(
            delayMilliseconds: 100,
            child: Text(
              widget.nameTitle,
              style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontSize:
                    MediaQuery.sizeOf(context).width > 360
                        ? widget.constexParent.maxWidth * 0.02
                        : MediaQuery.sizeOf(context).width * 0.04,
              ),
            ),
          ),
          AnimatedItem(
            delayMilliseconds: 500,
            child: Text(
              widget.position,
              style: GoogleFonts.bebasNeue(
                color: prymariColor,
                fontSize:
                    MediaQuery.sizeOf(context).width > 360
                        ? widget.constexParent.maxWidth * 0.06
                        : MediaQuery.sizeOf(context).width * 0.09,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedItem(
            delayMilliseconds: 700,
            child: Text(
              widget.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontSize:
                    MediaQuery.sizeOf(context).width > 360
                        ? widget.constexParent.maxWidth * 0.03
                        : MediaQuery.sizeOf(context).width * 0.04,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
