import 'package:flutter/material.dart';

import '../widgets.dart';

class SpendInPeriodWidget extends StatefulWidget {
  const SpendInPeriodWidget({super.key});

  @override
  State<SpendInPeriodWidget> createState() => _SpendInPeriodWidgetState();
}

class _SpendInPeriodWidgetState extends State<SpendInPeriodWidget> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: SpendByDayCardWidget()),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
      ),
    );
  }
}