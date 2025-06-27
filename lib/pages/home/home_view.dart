import 'package:flutter/material.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/components/about_widget.dart';
import 'package:portifolio/core/components/apresetation_widget.dart';
import 'package:portifolio/core/components/contact_widget.dart';
import 'package:portifolio/core/components/custom__app_bar.dart';
import 'package:portifolio/core/components/project_widget.dart';
import 'package:portifolio/core/components/skills_widget.dart';
import 'package:portifolio/pages/home/home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: CustomAppBar(context: context, titlePage: title, ontap: () {}),
      body: LayoutBuilder(
        builder:
            (context, constraints) => Center(
              child: Container(
                decoration: BoxDecoration(color: backgroudColor),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.9,
                ),
                height: constraints.maxHeight,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  onPageChanged: (value) => updateViewTitle(value),
                  children: [
                    ApresetationWidget(
                      constexParent: constraints,
                      nameTitle: "OPA, EU SOU GONÇALVES",
                      position: "MOBILE DEVELOPER",
                      description:
                          """Acadêmico em Engenharia de software\n com um bom tempo como desenvolvedor mobile resolvendo muito bug.""",
                    ),
                    AboutWidget(
                      constexParent: constraints,
                      position: "Desenvolvedor Flutter",
                      apresentation:
                          """Com 3 anos de experiencia com desenvolvimento flutter, tenho desenvolvido e prestado suporte a aplicações, sempre levando em consideração um código limpo e organizado.\n Possuo conhecimento em outras tecnologias as quais também utilizo ao desenvolver um nova solução, tenho dedicado tempo a estudo de assuntos mais importantes como arquitetura, padrões de projetos à medida que avanço na graduação de Engenharia de software.\n Criativo, comprometido e responsável, sou um excelente profissional disposto a crescer e aprender cada vez mais !""",
                    ),
                    SkillsWidget(contexParent: constraints),
                    ProjectWidget(
                      projects: projects,
                      constexParent: constraints,
                    ),
                    ContactWidget(constexParent: constraints),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
