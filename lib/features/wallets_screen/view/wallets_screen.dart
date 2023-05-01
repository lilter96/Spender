import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class WalletsScreen extends StatefulWidget {
  const WalletsScreen({super.key});

  @override
  State<WalletsScreen> createState() => _WalletsScreenState();
}
class _WalletsScreenState extends State<WalletsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WalletsAppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          WalletBalanceWidget(),
          WalletCashflowWidget()
        ],
      )
    );
  }
} 