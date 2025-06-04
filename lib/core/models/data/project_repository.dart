// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProjectRepository {
  final String title;
  final String decription;
  final String img;
  final String path;
  final List<String> languages;

  ProjectRepository({
    required this.title,
    required this.decription,
    required this.img,
    required this.path,
    required this.languages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': title,
      'decription': decription,
      'img': img,
      'html_url': path,
      'language': languages,
    };
  }

  factory ProjectRepository.fromMap(Map<String, dynamic> map) {
    return ProjectRepository(
      title: map['name'],
      decription: map['description'] ?? "",
      img: map['img'] ?? "",
      path: map['html_url'],
      languages: List<String>.from((map['language'])),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectRepository.fromJson(String source) =>
      ProjectRepository.fromMap(json.decode(source) as Map<String, dynamic>);
}
