import 'package:flutter/material.dart';

class BudgetsDefaultScreenWidget extends StatefulWidget {
  const BudgetsDefaultScreenWidget({super.key});

  @override
  State<BudgetsDefaultScreenWidget> createState() =>
      _BudgetsDefaultScreenWidgetState();
}

class _BudgetsDefaultScreenWidgetState
    extends State<BudgetsDefaultScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/images/money_bag.jpg', height: 120, width: 120),
      const Center(
          child: Text(
        'You have no budgets',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
      const Padding(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Center(
          child: Text(
            'Start saveing money be creating budgets and we will help\nyou stick to it',
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,   
          ),
        ),
      ),
      SizedBox(
        width: 300,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 24, 211, 155)),
          ),
          onPressed: () {},
          child: const Text('Create Your First Budget', style: TextStyle(color: Colors.white),) ,
        ),
      )
    ]);
  }
}
