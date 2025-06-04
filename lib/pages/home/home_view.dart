import 'package:flutter/material.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/components/about_widget.dart';
import 'package:portifolio/core/components/apresetation_widget.dart';
import 'package:portifolio/core/components/contact_widget.dart';
import 'package:portifolio/core/components/custom__app_bar.dart';
import 'package:portifolio/core/components/project_widget.dart';
import 'package:portifolio/core/components/skills_widget.dart';
import 'package:portifolio/core/services/impl/git_hub_service_impl.dart';
import 'package:portifolio/pages/home/home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: CustomAppBar(
        titlePage: title,
        ontap: () {
          GitHubServiceImpl().getAllRepositories();
        },
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: PageView(
          scrollDirection: Axis.vertical,
          onPageChanged: (value) => updateViewTitle(value),
          children: [
            ApresetationWidget(
              nameTitle: "OPA, EU SOU GONÇALVES",
              position: "MOBILE DEVELOPER",
              description:
                  """Academico em Engenharia de software\n com um bom tempo como desenvolvedor mobile resolvendo muito bug.""",
            ),
            AboutWidget(
              position: "Desenvolvedor Flutter",
              apresentation:
                  """Com 3 anos de experiencia com desenvolviemnto flutter, tenho desenvolvido e prestadosuporte a plicações, sempre levando em consideração um codigo limpo e ergonazado.\n\n Possui conhecimento em outras tecnologias as quais também ultilizo ao desenvolver um nova soluçõa, tenho dedicado tempo a estudo de assuntos mais importantes como aruitetur, padrões de proejtos a medida que avanço na graduação deEngenahria de software.\n\n Criativo, compormetido e reposnavel, sou um excelente profisisonaldisposto a crescer e aprender cada vez mais !""",
            ),
            SkillsWidget(),
            ProjectWidget(projects: projects),
            ContactWidget(),
          ],
        ),
      ),
    );
  }
}
