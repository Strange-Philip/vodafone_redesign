import 'package:flutter/material.dart';
import 'package:vodafone_redesign/theme/app_colors.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Icon(
                Icons.sensors,
                color: AppColors.vodafoneRed,
                size: 30,
              ),
            ),
            LinearProgressIndicator(
              value: 0.4,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black26
                  : const Color(0xffDADADA),
              valueColor: const AlwaysStoppedAnimation<Color>(
                AppColors.vodafoneRed,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Your data',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color(0xff7C7C7C),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                  text: '20.34',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary),
                  children: [
                    TextSpan(
                      text: ' GB',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    TextSpan(
                      text: ' left',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                )),
                RichText(
                    text: TextSpan(
                  text: 'of ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Color(0xff7C7C7C)),
                  children: [
                    TextSpan(
                      text: '300',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Color(0xff7C7C7C)),
                    ),
                    TextSpan(
                      text: ' GB',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Color(0xff7C7C7C)),
                    ),
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
