import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/helpers/houver_efect.dart';

class HardSkills extends StatelessWidget {
  const HardSkills({super.key, this.contexParent});
  final BoxConstraints? contexParent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
          (contexParent != null)
              ? SizedBox(
                width: contexParent!.maxWidth * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tecnologias",
                      style: GoogleFonts.bebasNeue(
                        color: prymariColor,
                        fontSize: contexParent!.maxWidth * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                      itemCount: hardSkills.length,
                      itemBuilder:
                          (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HouverEfect(
                              child: Image.asset(
                                width: 20,
                                height: 20,
                                hardSkills[index],
                              ),
                            ),
                          ),
                    ),
                  ],
                ),
              )
              : SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tecnologias",
                      style: GoogleFonts.bebasNeue(
                        color: prymariColor,
                        fontSize: MediaQuery.sizeOf(context).width * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                      itemCount: hardSkills.length,
                      itemBuilder:
                          (context, index) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: HouverEfect(
                              child: Image.asset(
                                hardSkills[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                    ),
                  ],
                ),
              ),
    );
  }
}
