import 'package:flutter/material.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/models/data/project_repository.dart';
import 'package:portifolio/core/services/impl/git_hub_service_impl.dart';
import 'package:portifolio/pages/home/home.dart';

abstract class HomeViewModel extends State<Home> {
  int _currentPage = 0;
  String title = views.first;
  List<ProjectRepository> projects = [];
  final ScrollController scrollController = ScrollController();

  final GlobalKey apresetationKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  late List<GlobalKey> sectionKeys;
  List<double> sectionOffsets = [];

  int currentSectionIndex = 0;

  @override
  void initState() {
    super.initState();
    sectionKeys = [
      apresetationKey,
      aboutKey,
      skillsKey,
      projectKey,
      contactKey,
    ];

    GitHubServiceImpl().getAllRepositories().then((value) {
      projects = value;
    });

    scrollController.addListener(_scrollListener);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateSectionOffsets();
    });
  }

  void updateViewTitle(int pageValue) {
    setState(() {
      _currentPage = pageValue;
      title = views[_currentPage];
    });
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  void _calculateSectionOffsets() {
    sectionOffsets.clear();
    for (var key in sectionKeys) {
      final RenderBox? renderBox =
          key.currentContext?.findRenderObject() as RenderBox?;
      if (renderBox != null) {
        // Pega a posição do topo do widget em relação ao topo da tela
        final position = renderBox.localToGlobal(Offset.zero).dy;
        sectionOffsets.add(position);
      }
    }

    // print("Section Offsets: $sectionOffsets");
  }

  void _scrollListener() {
    double scrollPosition = scrollController.offset;
    int newIndex = 0;

    for (int i = 0; i < sectionOffsets.length; i++) {
      // Verifica se a posição do scroll ultrapassou o início desta seção
      if (scrollPosition + 150 >= sectionOffsets[i]) {
        newIndex = i;
        setState(() {
          currentSectionIndex = newIndex;
          updateViewTitle(currentSectionIndex);
        });
      }
    }
    print("Seção visível agora: ${views[newIndex]} (Índice: $newIndex)");
  }
}
