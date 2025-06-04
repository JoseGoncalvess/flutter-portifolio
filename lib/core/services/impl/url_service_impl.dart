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
}
