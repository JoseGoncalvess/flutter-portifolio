import 'package:flutter/material.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/pages/home/home.dart';

abstract class HomeViewModel extends State<Home> {
  int _currentPage = 0;
  String title = views.first;

  void updateViewTitle(int pageValue) {
    setState(() {
      _currentPage = pageValue;
      title = views[_currentPage];
    });
  }
}
