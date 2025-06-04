import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.tecnologys,
  });
  final String title;
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
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
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
              height: MediaQuery.sizeOf(context).height * 0.13,
              child: Column(
                children: [
                  Text(
                    "TECNOLOGIAS:",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.09,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.tecnologys.length,
                      (index) => Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text("$index"),
                      ),
                    ),
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
