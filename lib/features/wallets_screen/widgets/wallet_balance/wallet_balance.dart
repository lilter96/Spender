import 'package:flutter/material.dart';


class WalletBalanceWidget extends StatefulWidget {
  const WalletBalanceWidget({super.key});

  @override
  State<WalletBalanceWidget> createState() => _WalletBalanceWidget();
}

class _WalletBalanceWidget extends State<WalletBalanceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('-555 BYN'),
          Text('Wallet Balance')
        ]
      )
    );
  }
}