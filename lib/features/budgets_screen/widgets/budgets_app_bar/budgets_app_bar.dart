import 'package:flutter/material.dart';

class BudgetsAppBar extends StatefulWidget implements PreferredSizeWidget{
  const BudgetsAppBar({super.key});

  @override
  State<BudgetsAppBar> createState() => _BudgetsAppBarState();
  
  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}

class _BudgetsAppBarState extends State<BudgetsAppBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffd7d7d7),
            width: 2
          )
        )
      ),
      child: AppBar(
        toolbarHeight: kToolbarHeight,
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: "Budgets",
                        style: TextStyle(fontSize: 20, color: Colors.black)
                      )
                    ),
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }
}