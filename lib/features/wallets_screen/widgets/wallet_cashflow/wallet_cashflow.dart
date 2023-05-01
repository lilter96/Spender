import 'package:flutter/material.dart';

class WalletCashflowWidget extends StatefulWidget {
  const WalletCashflowWidget({super.key});

  final cashflowType = "";

  @override
  State<WalletCashflowWidget> createState() => _WalletCashflowWidgetState();
}

class _WalletCashflowWidgetState extends State<WalletCashflowWidget> {
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