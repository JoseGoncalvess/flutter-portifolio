import 'dart:developer';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/models/data/project_repository.dart';
import 'package:portifolio/core/services/git_hub_service.dart';
import 'package:dio/dio.dart';

class GitHubServiceImpl implements GitHubService {
  final _dio = Dio();

  @override
  Future<List<ProjectRepository>> getAllRepositories() async {
    List<ProjectRepository> projetos = [];
    try {
      final response = await _dio.get(
        '${baseURL}/users/JoseGoncalvess/repos',
        queryParameters: {'per_page': 100, 'page': 1},
      );
      for (var repo in response.data) {
        if (repo["topics"].contains("portifolio")) {
          repo["language"] = await getLanguagesOfRepository(
            repo["languages_url"],
          );
          ProjectRepository newproject = ProjectRepository.fromMap(repo);
          newproject.languages.remove("Objective-C");
          newproject.img = ProjectRepository.getSrcProject(newproject.title);

          projetos.add(newproject);
        }
      }
    } catch (e) {
      log(e.toString());
    }
    log(projetos.toString());
    return projetos;
  }

  @override
  Future<List<String>> getLanguagesOfRepository(String url) async {
    List<String> languages = [];
    try {
      final reposnse = await _dio.get(url);
      Map.of(reposnse.data).forEach((key, value) => languages.add(key));
    } catch (e) {
      log(e.toString());
    }
    return languages;
  }
}
