import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/helpers/houver_efect.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key, this.contexParent});
  final BoxConstraints? contexParent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          contexParent != null
              ? contexParent!.maxWidth * 0.35
              : MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            contexParent != null
                ? [
                  Text(
                    "Pessoais:",
                    style: GoogleFonts.bebasNeue(
                      color: prymariColor,
                      fontSize: contexParent!.maxWidth * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:
                        skills
                            .map(
                              (skill) => HouverEfect(
                                child: Text(
                                  skill,
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.robotoSlab(
                                    color: Colors.white,
                                    fontSize: contexParent!.maxWidth * 0.02,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ]
                : [
                  Text(
                    "Pessoais:",
                    style: GoogleFonts.bebasNeue(
                      color: prymariColor,
                      fontSize: MediaQuery.sizeOf(context).width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children:
                        skills
                            .map(
                              (skill) => Text(
                                skill,
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.robotoSlab(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.sizeOf(context).width * 0.05,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ],
      ),
    );
  }
}
