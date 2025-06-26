import 'package:flutter/material.dart';
import 'package:portifolio/core/services/url_service.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlServiceImpl implements UrlService {
  @override
  void openLink({required String url}) async {
    Uri uriURL = Uri.parse(url);
    if (await canLaunchUrl(uriURL)) {
      await launchUrl(uriURL);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Future<bool> createdEmail(
    String subject,
    String body,
    BuildContext context,
  ) async {
    // TODO
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: "goncalvess.dev@gmail.com",
      queryParameters: {'subject': subject, 'body': body},
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Não foi possível abrir o email.")),
      );
    }
    return false;
  }
}
