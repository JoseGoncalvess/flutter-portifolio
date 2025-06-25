import 'dart:ui';

import 'package:portifolio/core/models/data/social_icon.dart';

final Color backgroudColor = const Color(0xFF000000);
final Color prymariColor = const Color(0xFF1971c2);
final String baseURL = 'https://api.github.com';

final List<String> skills = [
  "Criativo",
  "Proativo",
  "Responsável",
  "Organizado",
  "Facilidade em trabalhar em equipe",
  "Flexivel a mudanças",
];

final List<String> hardSkills = [
  "../assets/languages/flutter.png",
  "../assets/languages/java.png",
  "../assets/languages/kotlin.png",
  "../assets/languages/python.png",
  "../assets/languages/spring.png",
  "../assets/languages/postgres.png",
  "../assets/languages/git.png",
  "../assets/languages/js.png",
  "../assets/languages/css.png",
  "../assets/languages/html.png",
  "../assets/languages/vsCode.png",
  "../assets/languages/androidStudio.png",
];

final List<SocialIcon> socialIcons = [
  SocialIcon(
    img: "../assets/icons/youtube.png",
    url: "https://www.youtube.com/@DevJGs/featured",
    socialNike: "@DevJGs"

  ),
  SocialIcon(
    img: "../assets/icons/linkedin.png",
    url: "https://www.linkedin.com/in/jgoncalvessf",
    socialNike: "@jgoncalvessf"
  ),
  SocialIcon(
    img: "../assets/icons/github.png",
    url: "https://github.com/JoseGoncalvess",
    socialNike: "@JoseGoncalvess"
  ),
];

final List<String> views = [
  "Apresentação",
  "Sobre",
  "Habilidades",
  "Projetos",
  "Contato",
];
final List<String> languages = [
  "Espanhol Intermediário (B1)",
  "Inglês Básico (A1)",
  "Português (NATIVO)",
];
