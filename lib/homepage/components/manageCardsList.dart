import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ManageCardsList extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? svg;
  final String subtitle;
  const ManageCardsList(
      {super.key, this.icon, required this.title, this.svg, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: .5),
        child: ListTile(
            tileColor: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xff212020)
                : Colors.white,
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black26
                  : const Color(0xffF8F8F6),
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: Theme.of(context).brightness == Brightness.dark
                    ? const Color(0xff212020)
                    : const Color(0xffF7F7F7),
                width: 1,
              ),
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color(0xff7C7C7C),
              ),
              maxLines: 2,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : const Color(0xff7C7C7C),
            )));
  }
}
