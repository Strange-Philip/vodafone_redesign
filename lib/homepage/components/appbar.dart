import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone_redesign/constants/appImages.dart';
import 'package:vodafone_redesign/theme/app_colors.dart';

class VodaAppBar extends AppBar {
  final BuildContext context;
  VodaAppBar({
    super.key,
    required this.context,
  }) : super(
            leading: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? AppImages.vodaDark
                    : AppImages.vodaLight,
                height: 20,
                width: 20,
              ),
            ),
            surfaceTintColor: Colors.transparent,
            title: const Text(
              'Good Morning, Might.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            toolbarHeight: 80,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bell_fill,
                    color: AppColors.primary,
                    size: 25,
                  ),
                ),
              ),
            ]);
}
