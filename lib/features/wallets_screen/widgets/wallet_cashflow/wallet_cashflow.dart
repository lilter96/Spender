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
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Text(
              '-555 BYN',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Text('Wallet Balance')
        ]
      )
    );
  }
}