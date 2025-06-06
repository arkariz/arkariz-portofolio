import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_theme.dart';
import 'package:personal_portofolio/daycode/core/widgets/d_text.dart';

class ServiceItem extends StatefulWidget {
  const ServiceItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final String icon;
  final String title;
  final String description;

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  bool isHover = false;
  double cardOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (bool value) {
        setState(() => isHover = value);
      },
      onTap: (){},
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        duration: const Duration(milliseconds: 200),
        constraints: BoxConstraints(minHeight: 300),
        curve: Curves.easeInOut,
        transform: getMatrix4(),
        decoration: BoxDecoration(
          color: DaycodeTheme.instance.theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            SvgPicture.asset(
              widget.icon,
              colorFilter: ColorFilter.mode(DaycodeTheme.instance.theme.colorScheme.primary, BlendMode.srcIn),
              width: 60,
              height: 60,
            ),
            DText(
              text: widget.title,
              type: DTextType.titleMedium,
              textAlign: TextAlign.center,
            ),
            DText(
              text: widget.description,
              type: DTextType.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Matrix4 getMatrix4() {
    return isHover
      ? (Matrix4.identity()
        ..translate(0.0, cardOffset, 0.0)
        ..scale(1.03, 1.03, 1.03))
      : Matrix4.identity()..translate(0.0, cardOffset, 0.0);
  }
}