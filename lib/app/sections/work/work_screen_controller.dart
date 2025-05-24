import 'package:get/get.dart';
import 'package:personal_portofolio/core/models/services.dart';

class WorkScreenController extends GetxController {
  final services = [
    Services(
      icon: "icons/branding.svg",
      name: "Branding",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mi nisi, placerat a rhoncus nec, dapibus eu metus.",
      tool: [
        "Photoshop",
        "Illustrator",
        "Figma",
      ],
    ),
    Services(
      icon: "icons/developer.svg",
      name: "Full Stack Developer",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mi nisi, placerat a rhoncus nec, dapibus eu metus.",
      tool: [
        "Flutter",
        "Dart",
        "Firebase",
      ],
    ),
    Services(
      icon: "icons/product.svg",
      name: "Product Designer",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mi nisi, placerat a rhoncus nec, dapibus eu metus.",
      tool: [
        "Figma",
        "Adobe XD",
        "Photoshop",
      ],
    ),
  ].obs;
}
