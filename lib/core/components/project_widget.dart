import 'package:flutter/material.dart';
import 'package:portifolio/core/components/project_card.dart';
import 'package:portifolio/core/models/data/project_repository.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({super.key, required this.projects});
  final List<ProjectRepository> projects;

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged:
                  (value) => setState(() {
                    _currentPage = value;
                  }),
              itemCount: widget.projects.length,
              itemBuilder:
                  (context, index) => ProjectCard(
                    title: widget.projects[index].title,
                    description: widget.projects[index].decription,
                    tecnologys: widget.projects[index].languages,
                  ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.projects.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 350),
                  curve: Curves.easeIn,
                  width: _currentPage == index ? 20 : 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.white : Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius:
                        _currentPage == index
                            ? BorderRadius.circular(12)
                            : null,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
