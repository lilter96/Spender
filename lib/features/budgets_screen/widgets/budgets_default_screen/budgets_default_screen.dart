import 'package:flutter/material.dart';

import '../budgets_modal_bottom_sheet/budgets_modal_bottom_sheet.dart';

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
      Container (
      padding: const EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width,
      child: Column (
          children: const <Widget>[
            Text ('Start saving money by creating budgets and we will help you stick to it', textAlign: TextAlign.center),
          ],
        ),
      ),
      SizedBox(
        width: 300,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 24, 211, 155)),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,             
              isScrollControlled: true,
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const BudgetModalBottomSheetWidget(),
                  ),
                );
              },
            );  
          },
          child: const Text('Create Your First Budget', style: TextStyle(color: Colors.white),),
        ),
      )
    ]);
  }
}
