import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pessoais:",
            style: GoogleFonts.bebasNeue(
              color: prymariColor,
              fontSize: MediaQuery.sizeOf(context).width * 0.07,
              fontWeight: FontWeight.w400,
            ),
          ),
          Column(
            children:
                skills
                    .map(
                      (skill) => Text(
                        skill,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: MediaQuery.sizeOf(context).width * 0.05,
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
