import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManageCardsGrid extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? svg;

  const ManageCardsGrid({super.key, this.icon, required this.title, this.svg});

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
                        height: 30,
                        width: 30,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : const Color(0xff4F4F51),
                          BlendMode.srcATop,
                        ))
                    : Icon(
                        icon,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : const Color(0xff4F4F51),
                        size: 25,
                      ),
              ),
              const Spacer(),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
        ));
  }
}
