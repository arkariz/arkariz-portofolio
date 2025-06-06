import 'package:flutter/material.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_theme.dart';
import 'package:personal_portofolio/daycode/core/widgets/responsive.dart';

class NavigationBarItem extends StatefulWidget {
  const NavigationBarItem({
    super.key,
    required this.label,
    this.isActive = false,
    required this.onTapButton,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTapButton;

  @override
  State<NavigationBarItem> createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  bool isHover = false;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context) ? 50 : 30),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        onHover: (value) {
          setState(() => isHover = value);
        },
        onTap: widget.onTapButton,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: DaycodeTheme.instance.theme.textTheme.titleMedium!.copyWith(
            fontSize: widget.isActive
              ? DaycodeTheme.instance.theme.textTheme.titleLarge!.fontSize
              : DaycodeTheme.instance.theme.textTheme.titleMedium!.fontSize,
          ),
          child: Text(widget.label),
        ),
      ),
    );
  }
}