import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/components/skills/hard_skills.dart';
import 'package:portifolio/core/components/skills/soft_skills.dart';
import 'package:portifolio/core/helper/animateditem.dart';

class SkillsWidget extends StatefulWidget {
  const SkillsWidget({super.key, required this.contexParent});
  final BoxConstraints contexParent;

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
        children:
            MediaQuery.sizeOf(context).width > 800
                ? [
                  SizedBox(
                    width: widget.contexParent.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: widget.contexParent.maxWidth * 0.9,
                          height: widget.contexParent.maxWidth * 0.3,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              HardSkills(contexParent: widget.contexParent),
                              SoftSkills(contexParent: widget.contexParent),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Idiomas",
                    style: GoogleFonts.bebasNeue(
                      color: prymariColor,
                      fontSize: widget.contexParent.maxWidth * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedItem(
                      delayMilliseconds: 300,
                      child: SizedBox(
                        width: widget.contexParent.maxWidth * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:
                              languages
                                  .map(
                                    (l) => Text(
                                      l,
                                      style: GoogleFonts.robotoSlab(
                                        color: Colors.white,
                                        fontSize:
                                            widget.contexParent.maxWidth *
                                            0.015,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                    ),
                  ),
                ]
                : [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height * 0.5,
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
                  Text(
                    "Idiomas",
                    style: GoogleFonts.bebasNeue(
                      color: prymariColor,
                      fontSize: MediaQuery.sizeOf(context).width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: AnimatedItem(
                      delayMilliseconds: 500,
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Column(
                          children:
                              languages
                                  .map(
                                    (l) => Text(
                                      l,
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.sizeOf(context).width *
                                            0.04,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                    ),
                  ),
                ],
      ),
    );
  }
}
