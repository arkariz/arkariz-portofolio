import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingController extends GetxController {
  final isHoverProfilePicture = false.obs;
  final profilePictureOffset = 0.0.obs;

  Future<void> openUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
} 