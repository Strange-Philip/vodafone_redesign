import 'package:flutter/material.dart';
import 'package:vodafone_redesign/homepage/components/manageCardsGrid.dart';

import 'components/appbar.dart';
import 'components/balanceCard.dart';
import 'components/homepageCards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VodaAppBar(
        context: context,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BalanceCard(),
            Row(
              children: [
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
                HomeCard(
                  icon: Icons.receipt_outlined,
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
              padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10),
              child: Text(
                'Manage',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
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
                  icon: Icons.phone_android_outlined,
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
