import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class HardSkills extends StatelessWidget {
  const HardSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tecnologia:",
              style: GoogleFonts.bebasNeue(
                color: prymariColor,
                fontSize: MediaQuery.sizeOf(context).width * 0.07,
                fontWeight: FontWeight.w400,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemCount: hardSkills.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      hardSkills[index],
                      scale: 0.2,
                      fit: BoxFit.contain,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
