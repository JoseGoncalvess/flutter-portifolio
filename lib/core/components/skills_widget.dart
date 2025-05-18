import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/components/skills/hard_skills.dart';
import 'package:portifolio/core/components/skills/soft_skills.dart';

class SkillsWidget extends StatefulWidget {
  const SkillsWidget({super.key});

  @override
  State<SkillsWidget> createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.63,
                    child: PageView(
                      onPageChanged:
                          (value) => setState(() {
                            _currentPage = value;
                          }),
                      children: [HardSkills(), SoftSkills()],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        2,
                        (index) => AnimatedContainer(
                          duration: Duration(milliseconds: 350),
                          curve: Curves.easeIn,
                          width: _currentPage == index ? 20 : 10,
                          height: 10,
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color:
                                _currentPage == index
                                    ? Colors.white
                                    : Colors.grey,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                _currentPage == index
                                    ? BorderRadius.circular(12)
                                    : null,
                          ),
                        ),
                      ),
                    ),
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
