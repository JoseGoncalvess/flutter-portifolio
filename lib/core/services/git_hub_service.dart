import 'package:portifolio/core/models/data/project_repository.dart';

abstract class GitHubService {
  Future<List<ProjectRepository>> getAllRepositories();
  Future<List<String>> getLanguagesOfRepository(String url);
}
