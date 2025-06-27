import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/helper/animated_Item.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({
    super.key,
    required this.position,
    required this.apresentation,
    required this.constexParent,
  });
  final String position;
  final String apresentation;
  final BoxConstraints constexParent;

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.constexParent.maxHeight,
      width: widget.constexParent.maxWidth,
      child:
          widget.constexParent.maxWidth > 800
              ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedItem(
                        delayMilliseconds: 200,
                        child: SizedBox(
                          width: widget.constexParent.maxWidth * 0.4,
                          child: Text(
                            textAlign: TextAlign.left,
                            widget.position,
                            style: GoogleFonts.bebasNeue(
                              color: prymariColor,
                              fontSize: widget.constexParent.maxWidth * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      AnimatedItem(
                        delayMilliseconds: 500,
                        child: SizedBox(
                          height: widget.constexParent.maxHeight * 0.43,
                          width: widget.constexParent.maxWidth * 0.4,
                          child: Text(
                            widget.apresentation,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: widget.constexParent.maxWidth * 0.01,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.grey,
                    backgroundImage: AssetImage("../assets/assets/profile.png"),
                    radius: 150,
                  ),
                ],
              )
              : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedItem(
                          delayMilliseconds: 200,
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              textAlign: TextAlign.center,
                              widget.position,
                              style: GoogleFonts.bebasNeue(
                                color: prymariColor,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.05,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        AnimatedItem(
                          delayMilliseconds: 500,
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.45,
                            width:
                                MediaQuery.sizeOf(context).width < 768
                                    ? null
                                    : MediaQuery.sizeOf(context).width * 0.8,
                            child: Text(
                              widget.apresentation,
                              textAlign:
                                  MediaQuery.sizeOf(context).width < 768
                                      ? TextAlign.justify
                                      : TextAlign.center,
                              style: GoogleFonts.robotoSlab(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize:
                                    MediaQuery.sizeOf(context).width < 768
                                        ? MediaQuery.sizeOf(context).width *
                                            0.035
                                        : MediaQuery.sizeOf(context).width *
                                            0.03,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.grey,
                    backgroundImage: AssetImage("../assets/assets/profile.png"),
                    radius: 110,
                  ),
                ],
              ),
    );
  }
}
