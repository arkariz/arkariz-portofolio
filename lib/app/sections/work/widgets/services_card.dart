import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portofolio/core/colors/colors.dart';
import 'package:personal_portofolio/core/theme/theme.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';

class ServicesCard extends StatefulWidget {
  const ServicesCard({
    super.key,
    required this.icon,
    required this.name,
    required this.description,
    required this.tool,
    required this.maxWidth,
  });

  final String? icon;
  final String name;
  final String description;
  final List<String> tool;
  final double maxWidth;

  @override
  State<ServicesCard> createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard> {
  final double outerCardVerticalPadding = 55.h;
  final double innerCardVerticalPadding = 20.h;
  final double innerCardHorizontalPadding = 20.0;
  bool isHover = false;
  late ThemeData theme;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: outerCardVerticalPadding),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: renderAnimatedContainer(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 20.h,
            children: [
              renderIcon(),
              renderTitleText(),
              renderDescriptionText(),
              renderDesktopRow(),
              renderMobileRow()
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer renderAnimatedContainer({required Column content}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        transform: isHover
          ? (Matrix4.identity()
            ..translate(0.0, 10.0, 0.0)
            ..scale(1.0, 1.0, 1.0))
          : Matrix4.identity()..translate(0.0, 0.0, 0.0),
      constraints: BoxConstraints(
        maxWidth: widget.maxWidth,
      ),
      padding: EdgeInsets.symmetric(vertical: innerCardVerticalPadding, horizontal: innerCardHorizontalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: isHover
          ? pinkpurple
          : theme.serviceCard,
        boxShadow: isHover
          ? [primaryColorShadow]
          : [blackColorShadow],
      ),
      child: content,
    );
  }

  Widget renderIcon() {
    // return SvgPicture.asset(
    //   widget.icon!,
    //   height: 60,
    // );
    return Icon(
      Icons.android,
      size: 60,
    );
  }

  Text renderTitleText() {
    return Text(widget.name,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: isHover
            ? whiteColor
            : theme.textColor,
      ),
    );
  }

  Text renderDescriptionText() {
    return Text(
      widget.description,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: isHover
            ? whiteColor.withValues()
            : theme.textColor,
        fontWeight: FontWeight.w200,
        fontSize: 13,
      ),
    );
  }

  Widget renderDesktopRow() {
    return Visibility(
      visible: Responsive.isDesktop(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.tool
            .map(
              (e) => Row(
                children: [
                  const Text('🛠   '),
                  Text(
                    e,
                    style: TextStyle(
                      color: isHover
                          ? whiteColor
                          : theme.textColor,
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  Widget renderMobileRow() {
    return Visibility(
      visible: Responsive.isMobile(context) || Responsive.isTablet(context),
      child: Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: widget.tool
              .map(
                (e) => Row(
                  children: [
                    const Text('🛠   '),
                    Text(
                      e,
                      style: TextStyle(
                        color: isHover
                            ? whiteColor
                            : theme.textColor,
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
