import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

import '../widgets.dart';


enum CashflowType {
  week,
  month,
  year
}

class WalletsAppBar extends StatefulWidget implements PreferredSizeWidget{
  const WalletsAppBar({super.key});

  @override
  State<WalletsAppBar> createState() => _WalletsAppBarState();
  
  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight * 2.5); 
}

class _WalletsAppBarState extends State<WalletsAppBar> {
  int _selectedFilter = 0;

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child
        ),
      ));
  }

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
        toolbarHeight: kToolbarHeight * 2.5,
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_back_ios),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: "Cash Wallet",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nTransactions',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                            )
                          )
                        ]
                      )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.white
                      ),
                      icon: const Icon(Icons.arrow_drop_down_outlined, color: Colors.grey),
                      onPressed: () => _showDialog(
                        CupertinoPicker(
                          magnification: 1.22,
                          squeeze: 1.2,
                          useMagnifier: true,
                          itemExtent: 32.0,
                          scrollController: FixedExtentScrollController(initialItem: _selectedFilter),
                          onSelectedItemChanged: (int selectedItem) {
                            setState(() {
                              _selectedFilter = selectedItem;
                            });
                          },
                          children: List<Widget>.generate(CashflowType.values.length, (int index) {
                              return Center(
                                child: Text(
                                  toBeginningOfSentenceCase(CashflowType.values[index].name)!,
                                ),
                              );
                          }),
                        ),
                      ), 
                      label: Text(
                          "By ${CashflowType.values[_selectedFilter].name}s",
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey
                          ),
                        ),
                    )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectedDateFrameWidget(_selectedFilter)
                ],
              )
            ],
        ),
      ),
    );
  }
}