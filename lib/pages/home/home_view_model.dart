import 'package:flutter/material.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/models/data/project_repository.dart';
import 'package:portifolio/core/services/impl/git_hub_service_impl.dart';
import 'package:portifolio/pages/home/home.dart';

abstract class HomeViewModel extends State<Home> {
  int _currentPage = 0;
  String title = views.first;
  List<ProjectRepository> projects = [];

  @override
  void initState() {
    super.initState();
    GitHubServiceImpl().getAllRepositories().then((value) {
      projects = value;
    });
  }

  void updateViewTitle(int pageValue) {
    setState(() {
      _currentPage = pageValue;
      title = views[_currentPage];
    });
  }
}
