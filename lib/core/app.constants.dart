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
  "../assets/assets/languages/flutter.png",
  "../assets/assets/languages/java.png",
  "../assets/assets/languages/kotlin.png",
  "../assets/assets/languages/python.png",
  "../assets/assets/languages/spring.png",
  "../assets/assets/languages/postgres.png",
  "../assets/assets/languages/git.png",
  "../assets/assets/languages/js.png",
  "../assets/assets/languages/css.png",
  "../assets/assets/languages/html.png",
  "../assets/assets/languages/vsCode.png",
  "../assets/assets/languages/androidStudio.png",
];

final List<SocialIcon> socialIcons = [
  SocialIcon(
    img: "../assets/assets/icons/youtube.png",
    url: "https://www.youtube.com/@DevJGs/featured",
    socialNike: "@DevJGs"

  ),
  SocialIcon(
    img: "../assets/assets/icons/linkedin.png",
    url: "https://www.linkedin.com/in/jgoncalvessf",
    socialNike: "@jgoncalvessf"
  ),
  SocialIcon(
    img: "../assets/assets/icons/github.png",
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
