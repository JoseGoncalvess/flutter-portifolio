import 'package:flutter/material.dart';

abstract class UrlService {
  void openLink({required String url});
  Future<bool> createdEmail(String subject, String body, BuildContext context);
}
