
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/core/helper/animateditem.dart';
import 'package:portifolio/core/helper/houver_efect.dart';
import 'package:portifolio/core/services/impl/url_service_impl.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.title,
    required this.img,
    required this.description,
    required this.tecnologys,
    this.constexParent,
    required this.urlProject,
  });
  final String title;
  final String img;
  final String description;
  final String urlProject;
  final List<String> tecnologys;
  final BoxConstraints? constexParent;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child:
          widget.constexParent!.maxWidth > 800
              ? SizedBox(
                width: widget.constexParent!.maxWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    AnimatedItem(
                      delayMilliseconds: 100,
                      child: Container(
                        width: widget.constexParent!.maxWidth * 0.2,
                        height: widget.constexParent!.maxWidth * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.network(
                          width: widget.constexParent!.maxWidth * 0.1,
                          height: widget.constexParent!.maxWidth * 0.1,
                          widget.img,
                          fit: BoxFit.contain,
                          errorBuilder:
                              (context, error, stackTrace) => Container(),
                        ),
                      ),
                    ),
                    InkWell(
                      enableFeedback: true,
                      onTap:
                          () =>
                              UrlServiceImpl().openLink(url: widget.urlProject),
                      child: HouverEfect(
                        child: AnimatedItem(
                          delayMilliseconds: 300,
                          child: Text(
                            widget.title,
                            style: GoogleFonts.bebasNeue(
                              color: prymariColor,
                              fontSize: widget.constexParent!.maxWidth * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AnimatedItem(
                      delayMilliseconds: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          widget.description,
                          style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            fontSize: widget.constexParent!.maxWidth * 0.015,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    AnimatedItem(
                      delayMilliseconds: 700,
                      child: SizedBox(
                        width: widget.constexParent!.maxWidth,
                        height: widget.constexParent!.maxWidth * 0.066,
                        child: Column(
                          children: [
                            Text(
                              "TECNOLOGIAS:",
                              style: GoogleFonts.bebasNeue(
                                color: Colors.white,
                                fontSize: widget.constexParent!.maxWidth * 0.02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Wrap(
                              spacing: 5,
                              runSpacing: 5,
                              alignment: WrapAlignment.center,
                              children: List.generate(widget.tecnologys.length, (
                                index,
                              ) {
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
                    ),
                  ],
                ),
              )
              : SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: AnimatedItem(
                        delayMilliseconds: 700,
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.network(
                            widget.img,
                            errorBuilder:
                                (context, error, stackTrace) => Container(),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      enableFeedback: true,
                      onTap:
                          () =>
                              UrlServiceImpl().openLink(url: widget.urlProject),
                      child: Text(
                        widget.title,
                        style: GoogleFonts.bebasNeue(
                          color: prymariColor,
                          fontSize: MediaQuery.sizeOf(context).width * 0.08,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    AnimatedItem(
                      delayMilliseconds: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          widget.description,
                          style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.sizeOf(context).width < 768
                                    ? MediaQuery.sizeOf(context).width * 0.04
                                    : MediaQuery.sizeOf(context).width * 0.03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    AnimatedItem(
                      delayMilliseconds: 700,
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).width * 0.3,
                        child: Column(
                          children: [
                            Text(
                              "TECNOLOGIAS:",
                              style: GoogleFonts.bebasNeue(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Wrap(
                              spacing: 5,
                              runSpacing: 5,
                              alignment: WrapAlignment.center,
                              children: List.generate(widget.tecnologys.length, (
                                index,
                              ) {
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
                    ),
                  ],
                ),
              ),
    );
  }
}
