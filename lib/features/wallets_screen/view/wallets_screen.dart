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
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const WalletsAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.5,
                      decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Color(0xffd7d7d7),
                              width: 2
                            )
                          )
                        ),
                      child: const WalletBalanceWidget()
                    ),
                    SizedBox(
                      width: screenWidth * 0.5,
                      child: const WalletCashflowWidget()
                    ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SpendInPeriodWidget()
                  ]
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: WalletOverviewButton(
                iconData: Icons.add_circle,
                text: 'Wallet Overview',
                onPressed: () {
                  // Your onPressed action here
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Your onPressed action here
        },
        mini: true,
        child: Icon(Icons.add,),
        backgroundColor: const Color.fromARGB(255, 27, 208, 126),
        shape: CircleBorder()
      ),  
    );
  }
} 