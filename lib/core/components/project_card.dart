import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.title,
    required this.img,
    required this.description,
    required this.tecnologys,
  });
  final String title;
  final String img;
  final String description;
  final List<String> tecnologys;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.7,
                height: MediaQuery.sizeOf(context).height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(widget.img),
              ),
            ),
            Text(
              widget.title,
              style: GoogleFonts.bebasNeue(
                color: prymariColor,
                fontSize: MediaQuery.sizeOf(context).width * 0.09,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                widget.description,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: MediaQuery.sizeOf(context).width * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).width * 0.3,
              child: Column(
                children: [
                  Text(
                    "TECNOLOGIAS:",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    spacing: 5, // Espaçamento horizontal entre os ícones
                    runSpacing:
                        5, // Espaçamento vertical entre as linhas de ícones
                    alignment: WrapAlignment.center,
                    children: List.generate(widget.tecnologys.length, (index) {
                      String tecnology = widget.tecnologys[index]
                          .toLowerCase()
                          .replaceAll("Objective-C", "cbjectivec")
                          .replaceFirst("html", "html5")
                          .replaceAll("c++", "cplusplus");
                      return Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SvgPicture.network(
                          "https://raw.githubusercontent.com/devicons/devicon/refs/heads/master/icons/$tecnology/$tecnology-original.svg",
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
