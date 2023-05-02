import 'package:flutter/material.dart';

class CurrencyPicker extends StatefulWidget {
  final Function(String) onSelectedCurrency;
  const CurrencyPicker({Key? key, required this.onSelectedCurrency})
      : super(key: key);

  @override
  State<CurrencyPicker> createState() => _CurrencyPickerState();
}

class _CurrencyPickerState extends State<CurrencyPicker> {
  String _selectedCurrency = 'USD';
  final List<String> currencies = [
    'USD',
    'EUR',
    'GBP',
    'JPY',
    'AUD',
    'CAD',
    'CHF',
    'CNY',
    'SEK',
    'NZD',
  ];

  @override
  void initState() {
    super.initState();
    currencies.sort();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text('Select currency'),
        actions: <Widget>[
          Container(
            width: 34,
            height: 34,
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {},
              color: Colors.white,
              iconSize: 17, // set the size of the icon to 20
            ),
          ),
        ],
      ),  
      body: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(currencies[index]),
           onTap: () {
              setState(() {
                _selectedCurrency = currencies[index];
              });
              widget.onSelectedCurrency(_selectedCurrency);
              Navigator.of(context).pop(_selectedCurrency);
            },
            selected: _selectedCurrency == currencies[index],
          );
        },
      ),
    );
  }
}