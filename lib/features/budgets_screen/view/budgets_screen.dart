import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class BudgetsScreen extends StatefulWidget {
  const BudgetsScreen({super.key});

  @override
  State<BudgetsScreen> createState() => _BudgetsScreenState();
}

class _BudgetsScreenState extends State<BudgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const BudgetsAppBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BudgetsDefaultScreenWidget(),
          ],
        ));
  }
}
