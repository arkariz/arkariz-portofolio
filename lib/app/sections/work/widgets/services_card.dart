import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
  });

  final String? icon;
  final String name;
  final String description;
  final List<String> tool;

  @override
  State<ServicesCard> createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 55.h),
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
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            transform: isHover
              ? (Matrix4.identity()
                ..translate(0.0, 10.0, 0.0)
                ..scale(1.1, 1.1, 1.1))
              : Matrix4.identity()..translate(0.0, 0.0, 0.0),
          width: 300.w,
          height: 350.h,
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: isHover
              ? pinkpurple
              : theme.serviceCard,
            boxShadow: isHover
              ? [primaryColorShadow]
              : [blackColorShadow],
          ),
          child: Column(
            spacing: 20.h,
            children: [
              // SvgPicture.asset(
              //   icon,
              //   height: 60,
              // ),
              Text(widget.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isHover
                        ? whiteColor
                        : theme.textColor,
                  )),
              Text(
                widget.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isHover
                      ? whiteColor.withValues()
                      : theme.textColor,
                  fontWeight: FontWeight.w200,
                  fontSize: 13,
                ),
              ),
              if (Responsive.isDesktop(context))
                Column(
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
              if (Responsive.isMobile(context) || Responsive.isTablet(context))
                Expanded(
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
                )
            ],
          ),
        ),
      ),
    );
  }
}
