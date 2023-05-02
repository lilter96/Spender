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