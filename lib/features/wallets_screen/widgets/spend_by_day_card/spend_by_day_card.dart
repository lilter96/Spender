import 'package:flutter/material.dart';

class SpendByDayCardWidget extends StatefulWidget {
  const SpendByDayCardWidget({super.key});

  @override
  State<SpendByDayCardWidget> createState() => _SpendByDayCardWidgetState();
}

class _SpendByDayCardWidgetState extends State<SpendByDayCardWidget> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    
    return SizedBox(
      width: screenWidth,
      child: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 234, 230, 230),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Today", style: TextStyle(fontSize: 15)),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("-235 BYN"),
                )
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_cart, color: Colors.purple, size: 40),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Extra Income", style: TextStyle(fontSize: 16)),
                  Row(
                    children: const [
                      Icon(
                        Icons.wallet, 
                        color: Color.fromARGB(255, 116, 116, 116)
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(4, 8, 8, 8.0),
                        child: Text(
                          "Cash Wallet",
                           style: 
                           TextStyle(
                            color: Color.fromARGB(255, 116, 116, 116),
                            fontSize: 13
                          )
                        ),
                      )
                    ],
                  )]
                ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "-235 BYN", 
                  style: TextStyle(
                    color: Colors.red
                  )
                ),
              )
            ]
          )
        ],
      ),
    );
  }
}