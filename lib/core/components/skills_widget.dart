import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/components/skills/hard_skills.dart';
import 'package:portifolio/core/components/skills/soft_skills.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Habilidades",
                    style: GoogleFonts.bebasNeue(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    child: PageView(children: [HardSkills(), SoftSkills()]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  Text(
                    "Indiomas:",
                    style: GoogleFonts.bebasNeue(
                      color: prymariColor,
                      fontSize: MediaQuery.sizeOf(context).width * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Espanhol Intermediário (B1)",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.06,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Inglês Básico (A1)",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.06,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Português (NATIVO)",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.06,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
