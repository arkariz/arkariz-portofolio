import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portofolio/core/colors/colors.dart';
import 'package:personal_portofolio/core/widgets/custom_text.dart';

class AppbarDesktop extends StatelessWidget {
  const AppbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(
        top: 20.h,
        bottom: 5.h,
        left: 200.w,
        right: 200.w,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            spreadRadius: 25,
            blurRadius: 20,
            offset: const Offset(0, 3),
          ),
        ]
      ),
      child: Row(
        children: [
          const Expanded(child: CustomText(text: "< Arkariz />", fontSize: h1)),
          AppBarItem(
            label: "Home",
            onTapButton: (){},
          ),
          AppBarItem(
            label: "Work",
            onTapButton: (){},
          ),
          AppBarItem(
            label: "Contact",
            onTapButton: (){},
          ),
        ],
      ),
    );
  }
}

class AppBarItem extends StatefulWidget {
  const AppBarItem({
    super.key,
    required this.label,
    required this.onTapButton,
  });

  final String label;
  final VoidCallback onTapButton;

  @override
  State<AppBarItem> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  bool isHover = false;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() => isHover = value);
      },
      onTap: widget.onTapButton,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : null,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            if(isHover)
            BoxShadow(
              color: Colors.pink.shade300.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(2, 3),
            ),
          ]
        ),
        child: CustomText(
          text: widget.label,
          fontSize: h3,
        ),
      ),
    );
  }
}