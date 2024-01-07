import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone_redesign/constants/appImages.dart';
import 'package:vodafone_redesign/homepage/components/manageCardsGrid.dart';

import 'components/appbar.dart';
import 'components/balanceCard.dart';
import 'components/homepageCards.dart';
import 'components/manageCardsList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isList = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VodaAppBar(
        GestureDetector(
          onTap: () {
            setState(() {
              isList = !isList;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              Theme.of(context).brightness == Brightness.dark
                  ? AppImages.vodaDark
                  : AppImages.vodaLight,
              height: 20,
              width: 20,
            ),
          ),
        ),
        context: context,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              runAlignment: WrapAlignment.spaceBetween,
              children: [
                isList
                    ? const BalanceCard()
                    : HomeCard(
                        icon: Icons.sensors,
                        title: Text(
                          'Your data',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : const Color(0xff7C7C7C),
                          ),
                        ),
                        subtitle: RichText(
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
                      ),
                HomeCard(
                  icon: Icons.text_snippet_outlined,
                  title: Text(
                    'Your airtime balance',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : const Color(0xff7C7C7C),
                    ),
                  ),
                  subtitle: Text(
                    '¢ 4.32',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                HomeCard(
                  svg: "assets/receipt.svg",
                  title: Text(
                    'Pay Bills',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  subtitle: Text(
                    'Make payments for your post paid services',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : const Color(0xff7C7C7C),
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
              child: Text(
                'Manage',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            isList
                ? const Column(
                    children: [
                      ManageCardsList(
                        icon: Icons.add_circle_outline,
                        title: 'Top Up Airtime Or Data',
                        subtitle: "Recharge airtime or data to this phone ",
                      ),
                      ManageCardsList(
                        icon: Icons.phone_iphone_outlined,
                        title: 'My Subsrciptions ',
                        subtitle: "Manage all subscriptions",
                      ),
                      ManageCardsList(
                        svg: "assets/star.svg",
                        title: 'Value Added Services',
                        subtitle: "Manage all subscriptions",
                      ),
                      ManageCardsList(
                        svg: 'assets/gift.svg',
                        subtitle: "Manage all subscriptions",
                        title: 'Red Royalty Rewards',
                      ),
                    ],
                  )
                : GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    children: const [
                      ManageCardsGrid(
                        icon: Icons.add_circle_outline,
                        title: 'Top Up Airtime \nOr Data',
                      ),
                      ManageCardsGrid(
                        icon: Icons.phone_iphone_outlined,
                        title: 'My Subsrciptions\n ',
                      ),
                      ManageCardsGrid(
                        svg: "assets/star.svg",
                        title: 'Value Added Services',
                      ),
                      ManageCardsGrid(
                        svg: 'assets/gift.svg',
                        title: 'Red Royalty Rewards',
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
