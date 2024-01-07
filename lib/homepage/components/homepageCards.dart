import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_colors.dart';

class HomeCard extends StatelessWidget {
  final IconData? icon;
  final String? svg;
  final Widget title;
  final Widget subtitle;

  const HomeCard({super.key, this.icon, required this.title, required this.subtitle, this.svg});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.43,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xff212020)
                  : const Color(0xffF7F7F7),
              width: 3,
            ),
            color: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xff212020)
                : const Color(0xffFBFBFB),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: icon == null
                    ? SvgPicture.asset(svg!,
                        height: 22,
                        width: 22,
                        colorFilter: const ColorFilter.mode(
                          AppColors.vodafoneRed,
                          BlendMode.srcATop,
                        ))
                    : Icon(
                        icon,
                        color: AppColors.vodafoneRed,
                        size: 25,
                      ),
              ),
              const Spacer(),
              title,
              const SizedBox(
                height: 6,
              ),
              subtitle,
            ],
          ),
        ));
  }
}
